import 'package:driven_layout/src/template/language/templates/templates.dart' show Unit, Template;

class Node extends Unit {
  final Type type;
  final List<Template> children;

  const Node(this.type, this.children);
}