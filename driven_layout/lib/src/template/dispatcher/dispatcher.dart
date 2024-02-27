import 'dart:isolate';

import 'package:driven_layout/src/template/language/templates/templates.dart';
import 'package:driven_layout/src/template/language/ast_entities/ast_entities.dart';
import 'context_captures.dart' show ContextCaptures;
import 'context.dart' show Context;
import 'package:driven_layout/src/template/language/ast_entities/node_types.dart'
    show SyntacticEntity;

abstract class Dispatcher {
  Future<Context> dispatch<T extends Node, U extends SyntacticEntity>(
      T buffer, AstEntity data);

  factory Dispatcher({Dispatcher injected = const _Dispatcher()}) => injected;
}

final class _Dispatcher implements Dispatcher {
  const _Dispatcher();

  @override
  Future<Context> dispatch<T extends Node, U extends SyntacticEntity>(
      T buffer, AstEntity data) async {
    final Context contextRef = Context(ContextCaptures(
        List.empty(growable: true), List.empty(growable: true)));

    iterate() async {
      return switch ((buffer, data)) {
        (Node node, AstNodeEntity nodeEntity)
            when _nodesMatch(node, nodeEntity) =>
          await _mergeChildEntities(node, nodeEntity, contextRef, iterate),
        (NonOrderedNode node, AstNodeEntity nodeEntity)
            when _nodesMatch(node, nodeEntity) =>
          await _mergeNonOrderedChildren(node, nodeEntity, contextRef, iterate),
        (Leaf leaf, AstLeafEntity leafEntity)
            when _leafsMatch(leaf, leafEntity) =>
          _mergeLeafs(leaf, leafEntity),
        (Capture capture, AstNodeEntity node) =>
          _mergeNodeCapture(capture, node, contextRef),
        (Capture capture, AstLeafEntity leaf) =>
          _mergeLeafCapture(capture, leaf, contextRef),
        (Maybe maybe, AstEntity entity) =>
          await _mergeMaybe(maybe, entity, contextRef, iterate),
        (_, _) => throw UnimplementedError(),
      };
    }

    await Isolate.run(iterate);
    return contextRef;
  }

  bool _nodesMatch(Node node, AstNodeEntity nodeEntity) =>
      node.type == nodeEntity.type &&
      node.children.length <= nodeEntity.childEntities.length;

  Future<Template> _mergeChildEntities(
      Node node, AstNodeEntity nodeEntity, Context contextRef, iterate) async {
    var buffer = List<Template>.empty(growable: true);
    var nodeChildren = node.children;
    var entityChildren = nodeEntity.childEntities;
    for (var i = 0, j = 0;
        (i < nodeChildren.length && j < entityChildren.length);
        i++, j++) {
      final entityChild = entityChildren.elementAtOrNull(i);
      final child = node.children.elementAtOrNull(j);

      if (entityChild != null && child != null) {
        if (child is MaybeMultiple) {
          try {
            final element = await iterate(entityChild, child, contextRef);
            buffer.add(element);
            if (child.cacheFirst) {
              return Node(node.type, buffer);
            }
            j--;
          } catch (_) {
            continue;
          }
        } else if (child is Skip) {
          continue;
        }

        buffer.add(await iterate(entityChild, child, contextRef));
      }
    }

    return Node(node.type, buffer);
  }

  Future<Template> _mergeNonOrderedChildren(NonOrderedNode node,
      AstNodeEntity nodeEntity, Context contextRef, iterate) async {
    final nodeChildren = node.children;
    final entityChildren = nodeEntity.childEntities;

    final List<Template> buffer = List.empty(growable: true);

    outerloop:
    for (var i = 0; i < nodeChildren.length; i++) {
      for (var j = 0; j < entityChildren.length; j++) {
        final node = nodeChildren.elementAtOrNull(i);
        final entity = entityChildren.elementAtOrNull(j);

        if (node != null && entity != null) {
          try {
            buffer.add(await iterate(entity, node, contextRef));
            continue outerloop;
          } catch (e) {
            continue;
          }
        }
      }
    }

    return Node(node.type, buffer);
  }

  bool _leafsMatch(Leaf leaf, AstLeafEntity leafEntity) {
    return leaf.value == leafEntity.token.toString();
  }

  Template _mergeLeafs(Leaf leaf, AstLeafEntity leafEntity) {
    return Leaf(leafEntity.token.toString());
  }

  Template _mergeNodeCapture(
      Capture capture, AstNodeEntity node, Context contextRef) {
    capture.ref = node;
    contextRef.captures.nodeCaptures.add(capture);
    return capture;
  }

  Template _mergeLeafCapture(
      Capture capture, AstLeafEntity leaf, Context contextRef) {
    capture.ref = leaf;
    contextRef.captures.leafCaptures.add(capture);
    return capture;
  }

  Future<Template> _mergeMaybe(
      Maybe maybe, AstEntity entity, Context contextRef, iterate) async {
    for (var element in maybe.patterns) {
      try {
        return await iterate(entity, element, contextRef);
      } catch (e) {
        continue;
      }
    }

    throw UnimplementedError();
  }
}
