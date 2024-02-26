import 'node_types.dart' show AstNode;
import 'ast_entity.dart' show AstEntity;

class AstNodeEntity extends AstEntity {
  final AstNode astNode;
  final List<AstEntity> childEntities;

  Type get type => astNode.runtimeType;

  AstNodeEntity(this.astNode)
      : childEntities = astNode.childEntities.map(AstEntity.from).toList(),
        super(astNode);
}