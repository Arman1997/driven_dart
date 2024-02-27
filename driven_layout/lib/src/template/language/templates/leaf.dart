import 'package:driven_layout/src/template/dispatcher/dispatcher.dart' show Dispatcher;
import 'package:driven_layout/src/template/language/ast_entities/ast_entities.dart' show AstEntity;
import 'package:driven_layout/src/template/language/ast_entities/node_types.dart' show Token;
import 'package:driven_layout/src/template/language/templates/templates.dart' show Template;

import 'unit.dart';

/// Leaf node of [Template] tree
/// 
/// Cooridnates [Dispatcher] to expect [Token] in [AstEntity] tree with given [value].
/// 
/// ```dart
/// final exampleNode = Node(
///   ClassDeclaration,
///   [
///     Leaf("class"),
///   ],
/// );
/// ```
class Leaf extends Unit {
  final String value;

  const Leaf(this.value);
}