import 'package:driven_layout/src/template/language/templates/templates.dart' show Capture;

final class ContextCaptures {
  final List<Capture> nodeCaptures;
  final List<Capture> leafCaptures;

  const ContextCaptures(this.nodeCaptures, this.leafCaptures);
}