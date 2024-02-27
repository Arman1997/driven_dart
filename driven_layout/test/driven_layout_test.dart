import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:driven_layout/src/template/dispatcher/dispatcher.dart';
import 'package:driven_layout/src/template/language/ast_entities/ast_node_entity.dart';

import 'package:driven_layout/src/template/language/templates/templates.dart';
import 'package:test/test.dart';

const example = r"""
final _ = "Hello world";
""";
void main() {
  group('A group of tests', () {


    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () async {
      final template = Node(CompilationUnit, [
        Capture(),
      ]);

      try {
        final resultTemplate = await Dispatcher().dispatch(template, AstNodeEntity.from(parseString(content: example).unit));
        print(resultTemplate);
      } catch (e) {
        print(e);
      }
    });
  });
}
