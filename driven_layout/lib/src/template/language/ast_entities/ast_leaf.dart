import 'node_types.dart' show Token;
import 'ast_entity.dart';

class AstLeafEntity extends AstEntity {
  final Token token;

  AstLeafEntity(this.token) : super(token);
}