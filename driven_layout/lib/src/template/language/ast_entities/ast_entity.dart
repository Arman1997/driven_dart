import 'package:driven_layout/src/template/language/templates/template.dart' show Template;
import 'node_types.dart';
import 'ast_node_entity.dart';
import 'ast_leaf.dart';

abstract class AstEntity extends Template {
  static AstEntity from(SyntacticEntity syntacticEntity) {

    if (syntacticEntity is AstNode) {
      return AstNodeEntity.from(syntacticEntity);
    } else if (syntacticEntity is Token) {
      return AstLeafEntity(syntacticEntity);
    }

    throw UnimplementedError();
  }
}