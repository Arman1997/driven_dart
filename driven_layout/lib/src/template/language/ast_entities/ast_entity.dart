import 'package:driven_layout/src/template/language/ast_entities/ast_leaf.dart' show AstLeafEntity;
import 'package:driven_layout/src/template/language/ast_entities/ast_node_entity.dart' show AstNodeEntity;
import 'package:driven_layout/src/template/language/ast_entities/node_types.dart';
import 'package:driven_layout/src/template/language/templates/template.dart' show Template;

abstract class AstEntity extends Template {
  const AstEntity();

  factory AstEntity.from(SyntacticEntity entity) {
    switch (entity) {
      case (AstNodeEntity node):
        return node;
      case (AstLeafEntity leaf):
        return leaf;
    }
    throw UnimplementedError();
  }
}
