import 'package:driven_layout/src/template/language/templates/templates.dart';
import 'package:driven_layout/src/template/language/ast_entities/ast_entities.dart';
import 'context_captures.dart' show ContextCaptures;
import 'context.dart' show Context;
import 'package:driven_layout/src/template/language/ast_entities/node_types.dart' show SyntacticEntity;

abstract class Dispatcher {
  Future<Context> dispatch<T extends Node, U extends SyntacticEntity>(T buffer, AstEntity data);

  factory Dispatcher({ Dispatcher injected = const _Dispatcher() }) => injected;
}

final class _Dispatcher implements Dispatcher {

  const _Dispatcher();

  @override
  Future<Context> dispatch<T extends Node, U extends SyntacticEntity>(
      T buffer, AstEntity data) async {
    final List<Capture> nodeCaptures = List.empty(growable: true);
    final List<Capture> leafCaptures = List.empty(growable: true);

    final Context context =
        Context(ContextCaptures(nodeCaptures, leafCaptures));
    await _iterate(data, buffer, context);
    return context;
  }

  Future<Template> _iterate<U extends SyntacticEntity>(
      AstEntity data, Template templatePattern, Context contextRef) async {
    return switch ((templatePattern, data)) {
      (Node node, AstNodeEntity nodeEntity)
          when _nodesMatch(node, nodeEntity) =>
        await _mergeChildEntities(node, nodeEntity, contextRef),
      (NonOrderedNode node, AstNodeEntity nodeEntity)
          when _nodesMatch(node, nodeEntity) =>
        await _mergeNonOrderedChildren(node, nodeEntity, contextRef),
      (Leaf leaf, AstLeafEntity leafEntity)
          when _leafsMatch(leaf, leafEntity) =>
        _mergeLeafs(leaf, leafEntity),
      (Capture capture, AstNodeEntity node) =>
        _mergeNodeCapture(capture, node, contextRef),
      (Capture capture, AstLeafEntity leaf) =>
        _mergeLeafCapture(capture, leaf, contextRef),
      (Maybe maybe, AstEntity entity) =>
        await _mergeMaybe(maybe, entity, contextRef),
      (_, _) => throw UnimplementedError(),
    };
  }

  bool _nodesMatch(Node node, AstNodeEntity nodeEntity) =>
      node.type == nodeEntity.type &&
      node.children.length <= nodeEntity.childEntities.length;

  Future<Template> _mergeChildEntities(
      Node node, AstNodeEntity nodeEntity, Context contextRef) async {
    List<Template> buffer = List<Template>.empty(growable: true);
    for (var i = 0, j = 0;
        (i < node.children.length && j < nodeEntity.childEntities.length);
        i++, j++) {
      final entityChild = nodeEntity.childEntities.elementAtOrNull(i);
      final child = node.children.whereType<Template>().elementAtOrNull(j);

      if (entityChild != null && child != null) {
        if (child is MaybeMultiple) {
          try {
            final element = await _iterate(entityChild, child, contextRef);
            buffer.add(element);
            j--;
          } catch (_) {
            continue;
          }
        } else if (child is Skip) {
          continue;
        }

        buffer.add(await _iterate(entityChild, child, contextRef));
      }
    }

    return Node(node.type, buffer);
  }

  Future<Template> _mergeNonOrderedChildren(
      NonOrderedNode node, AstNodeEntity nodeEntity, Context contextRef) async {
      
      final nodeChildren = node.children;
      final entityChildren = nodeEntity.childEntities;

      final List<Template> buffer = List.empty(growable: true);
      
      outerloop:
      for (var i = 0; i < nodeChildren.length; i++) {
        for (var j = 0; j < entityChildren.length; j++) {
          final node = nodeChildren.elementAtOrNull(i);
          final entity = entityChildren.elementAtOrNull(j);

          if (node !=null  && entity != null) {
            try {
              buffer.add(await _iterate(entity, node, contextRef));
              continue outerloop;
            } catch(e) {
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
      Maybe maybe, AstEntity entity, Context contextRef) async {
    for (var element in maybe.patterns) {
      try {
        return await _iterate(entity, element, contextRef);
      } catch (e) {
        continue;
      }
    }

    throw UnimplementedError();
  }
}