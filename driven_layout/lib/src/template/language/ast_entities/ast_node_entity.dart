import 'package:analyzer/dart/ast/visitor.dart' show ThrowingAstVisitor;
import 'package:driven_layout/src/template/language/ast_entities/ast_leaf.dart';
import 'package:driven_layout/src/template/language/ast_entities/node_types.dart';
import 'ast_entity.dart' show AstEntity;

class AstNodeEntity extends AstEntity {
  final Type _nodeType;
  final List<AstEntity> childEntities;

  Type get type => _nodeType;

  AstNodeEntity({ required Type type, required this.childEntities}) : _nodeType = type;

  factory AstNodeEntity.from(AstNode node) {
    final nodeFactory = _Factory();
    node.accept(nodeFactory);
    return nodeFactory.astNode;
  }
}


final class _Factory implements ThrowingAstVisitor {
  late AstNodeEntity astNode;
  
  AstEntity _mapChild(SyntacticEntity entity) {
    if (entity is AstNode) {
      entity.accept(this);
      return astNode;
    } else if (entity is Token) {
      return AstLeafEntity(entity);
    }

    throw UnimplementedError();
  }

  @override
  visitAnnotation(Annotation node) { 
     astNode = AstNodeEntity(
      type: Annotation,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitArgumentList(ArgumentList node) { 
     astNode = AstNodeEntity(
      type: ArgumentList,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitAsExpression(AsExpression node) { 
     astNode = AstNodeEntity(
      type: AsExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitAssertInitializer(AssertInitializer node) { 
     astNode = AstNodeEntity(
      type: AssertInitializer,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitAssertStatement(AssertStatement node) { 
     astNode = AstNodeEntity(
      type: AssertStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitAssignedVariablePattern(AssignedVariablePattern node) { 
     astNode = AstNodeEntity(
      type: AssignedVariablePattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitAssignmentExpression(AssignmentExpression node) { 
     astNode = AstNodeEntity(
      type: AssignmentExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitAugmentationImportDirective(AugmentationImportDirective node) { 
     astNode = AstNodeEntity(
      type: AugmentationImportDirective,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitAwaitExpression(AwaitExpression node) { 
     astNode = AstNodeEntity(
      type: AwaitExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitBinaryExpression(BinaryExpression node) { 
     astNode = AstNodeEntity(
      type: BinaryExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitBlock(Block node) { 
     astNode = AstNodeEntity(
      type: Block,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitBlockFunctionBody(BlockFunctionBody node) { 
     astNode = AstNodeEntity(
      type: BlockFunctionBody,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitBooleanLiteral(BooleanLiteral node) { 
     astNode = AstNodeEntity(
      type: BooleanLiteral,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitBreakStatement(BreakStatement node) { 
     astNode = AstNodeEntity(
      type: BreakStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitCascadeExpression(CascadeExpression node) { 
     astNode = AstNodeEntity(
      type: CascadeExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitCaseClause(CaseClause node) { 
     astNode = AstNodeEntity(
      type: CaseClause,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitCastPattern(CastPattern node) { 
     astNode = AstNodeEntity(
      type: CastPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitCatchClause(CatchClause node) { 
     astNode = AstNodeEntity(
      type: CatchClause,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitCatchClauseParameter(CatchClauseParameter node) { 
     astNode = AstNodeEntity(
      type: CatchClauseParameter,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitClassDeclaration(ClassDeclaration node) { 
     astNode = AstNodeEntity(
      type: ClassDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitClassTypeAlias(ClassTypeAlias node) { 
     astNode = AstNodeEntity(
      type: ClassTypeAlias,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitComment(Comment node) { 
     astNode = AstNodeEntity(
      type: Comment,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitCommentReference(CommentReference node) { 
     astNode = AstNodeEntity(
      type: CommentReference,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitCompilationUnit(CompilationUnit node) { 
     astNode = AstNodeEntity(
      type: CompilationUnit,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitConditionalExpression(ConditionalExpression node) { 
     astNode = AstNodeEntity(
      type: ConditionalExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitConfiguration(Configuration node) { 
     astNode = AstNodeEntity(
      type: Configuration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitConstantPattern(ConstantPattern node) { 
     astNode = AstNodeEntity(
      type: ConstantPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitConstructorDeclaration(ConstructorDeclaration node) { 
     astNode = AstNodeEntity(
      type: ConstructorDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitConstructorFieldInitializer(ConstructorFieldInitializer node) { 
     astNode = AstNodeEntity(
      type: ConstructorFieldInitializer,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitConstructorName(ConstructorName node) { 
     astNode = AstNodeEntity(
      type: ConstructorName,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitConstructorReference(ConstructorReference node) { 
     astNode = AstNodeEntity(
      type: ConstructorReference,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitConstructorSelector(ConstructorSelector node) { 
     astNode = AstNodeEntity(
      type: ConstructorSelector,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitContinueStatement(ContinueStatement node) { 
     astNode = AstNodeEntity(
      type: ContinueStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitDeclaredIdentifier(DeclaredIdentifier node) { 
     astNode = AstNodeEntity(
      type: DeclaredIdentifier,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitDeclaredVariablePattern(DeclaredVariablePattern node) { 
     astNode = AstNodeEntity(
      type: DeclaredVariablePattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitDefaultFormalParameter(DefaultFormalParameter node) { 
     astNode = AstNodeEntity(
      type: DefaultFormalParameter,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitDoStatement(DoStatement node) { 
     astNode = AstNodeEntity(
      type: DoStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitDottedName(DottedName node) { 
     astNode = AstNodeEntity(
      type: DottedName,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitDoubleLiteral(DoubleLiteral node) { 
     astNode = AstNodeEntity(
      type: DoubleLiteral,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitEmptyFunctionBody(EmptyFunctionBody node) { 
     astNode = AstNodeEntity(
      type: EmptyFunctionBody,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitEmptyStatement(EmptyStatement node) { 
     astNode = AstNodeEntity(
      type: EmptyStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitEnumConstantArguments(EnumConstantArguments node) { 
     astNode = AstNodeEntity(
      type: EnumConstantArguments,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitEnumConstantDeclaration(EnumConstantDeclaration node) { 
     astNode = AstNodeEntity(
      type: EnumConstantDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitEnumDeclaration(EnumDeclaration node) { 
     astNode = AstNodeEntity(
      type: EnumDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitExportDirective(ExportDirective node) { 
     astNode = AstNodeEntity(
      type: ExportDirective,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitExpressionFunctionBody(ExpressionFunctionBody node) { 
     astNode = AstNodeEntity(
      type: ExpressionFunctionBody,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitExpressionStatement(ExpressionStatement node) { 
     astNode = AstNodeEntity(
      type: ExpressionStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitExtendsClause(ExtendsClause node) { 
     astNode = AstNodeEntity(
      type: ExtendsClause,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitExtensionDeclaration(ExtensionDeclaration node) { 
     astNode = AstNodeEntity(
      type: ExtensionDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitExtensionOverride(ExtensionOverride node) { 
     astNode = AstNodeEntity(
      type: ExtensionOverride,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitExtensionTypeDeclaration(ExtensionTypeDeclaration node) { 
     astNode = AstNodeEntity(
      type: ExtensionTypeDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitFieldDeclaration(FieldDeclaration node) { 
     astNode = AstNodeEntity(
      type: FieldDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitFieldFormalParameter(FieldFormalParameter node) { 
     astNode = AstNodeEntity(
      type: FieldFormalParameter,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitForEachPartsWithDeclaration(ForEachPartsWithDeclaration node) { 
     astNode = AstNodeEntity(
      type: ForEachPartsWithDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitForEachPartsWithIdentifier(ForEachPartsWithIdentifier node) { 
     astNode = AstNodeEntity(
      type: ForEachPartsWithIdentifier,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitForEachPartsWithPattern(ForEachPartsWithPattern node) { 
     astNode = AstNodeEntity(
      type: ForEachPartsWithPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitForElement(ForElement node) { 
     astNode = AstNodeEntity(
      type: ForElement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitForPartsWithDeclarations(ForPartsWithDeclarations node) { 
     astNode = AstNodeEntity(
      type: ForPartsWithDeclarations,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitForPartsWithExpression(ForPartsWithExpression node) { 
     astNode = AstNodeEntity(
      type: ForPartsWithExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitForPartsWithPattern(ForPartsWithPattern node) { 
     astNode = AstNodeEntity(
      type: ForPartsWithPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitForStatement(ForStatement node) { 
     astNode = AstNodeEntity(
      type: ForStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitFormalParameterList(FormalParameterList node) { 
     astNode = AstNodeEntity(
      type: FormalParameterList,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitFunctionDeclaration(FunctionDeclaration node) { 
     astNode = AstNodeEntity(
      type: FunctionDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitFunctionDeclarationStatement(FunctionDeclarationStatement node) { 
     astNode = AstNodeEntity(
      type: FunctionDeclarationStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitFunctionExpression(FunctionExpression node) { 
     astNode = AstNodeEntity(
      type: FunctionExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitFunctionExpressionInvocation(FunctionExpressionInvocation node) { 
     astNode = AstNodeEntity(
      type: FunctionExpressionInvocation,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitFunctionReference(FunctionReference node) { 
     astNode = AstNodeEntity(
      type: FunctionReference,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitFunctionTypeAlias(FunctionTypeAlias node) { 
     astNode = AstNodeEntity(
      type: FunctionTypeAlias,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitFunctionTypedFormalParameter(FunctionTypedFormalParameter node) { 
     astNode = AstNodeEntity(
      type: FunctionTypedFormalParameter,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitGenericFunctionType(GenericFunctionType node) { 
     astNode = AstNodeEntity(
      type: GenericFunctionType,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitGenericTypeAlias(GenericTypeAlias node) { 
     astNode = AstNodeEntity(
      type: GenericTypeAlias,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitGuardedPattern(GuardedPattern node) { 
     astNode = AstNodeEntity(
      type: GuardedPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitHideCombinator(HideCombinator node) { 
     astNode = AstNodeEntity(
      type: HideCombinator,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitIfElement(IfElement node) { 
     astNode = AstNodeEntity(
      type: IfElement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitIfStatement(IfStatement node) { 
     astNode = AstNodeEntity(
      type: IfStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitImplementsClause(ImplementsClause node) { 
     astNode = AstNodeEntity(
      type: ImplementsClause,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitImplicitCallReference(ImplicitCallReference node) { 
     astNode = AstNodeEntity(
      type: ImplicitCallReference,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitImportDirective(ImportDirective node) { 
     astNode = AstNodeEntity(
      type: ImportDirective,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitImportPrefixReference(ImportPrefixReference node) { 
     astNode = AstNodeEntity(
      type: ImportPrefixReference,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitIndexExpression(IndexExpression node) { 
     astNode = AstNodeEntity(
      type: IndexExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitInstanceCreationExpression(InstanceCreationExpression node) { 
     astNode = AstNodeEntity(
      type: InstanceCreationExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitIntegerLiteral(IntegerLiteral node) { 
     astNode = AstNodeEntity(
      type: IntegerLiteral,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitInterpolationExpression(InterpolationExpression node) { 
     astNode = AstNodeEntity(
      type: InterpolationExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitInterpolationString(InterpolationString node) { 
     astNode = AstNodeEntity(
      type: InterpolationString,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitIsExpression(IsExpression node) { 
     astNode = AstNodeEntity(
      type: IsExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitLabel(Label node) { 
     astNode = AstNodeEntity(
      type: Label,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitLabeledStatement(LabeledStatement node) { 
     astNode = AstNodeEntity(
      type: LabeledStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitLibraryAugmentationDirective(LibraryAugmentationDirective node) { 
     astNode = AstNodeEntity(
      type: LibraryAugmentationDirective,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitLibraryDirective(LibraryDirective node) { 
     astNode = AstNodeEntity(
      type: LibraryDirective,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitLibraryIdentifier(LibraryIdentifier node) { 
     astNode = AstNodeEntity(
      type: LibraryIdentifier,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitListLiteral(ListLiteral node) { 
     astNode = AstNodeEntity(
      type: ListLiteral,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitListPattern(ListPattern node) { 
     astNode = AstNodeEntity(
      type: ListPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitLogicalAndPattern(LogicalAndPattern node) { 
     astNode = AstNodeEntity(
      type: LogicalAndPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitLogicalOrPattern(LogicalOrPattern node) { 
     astNode = AstNodeEntity(
      type: LogicalOrPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitMapLiteralEntry(MapLiteralEntry node) { 
     astNode = AstNodeEntity(
      type: MapLiteralEntry,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitMapPattern(MapPattern node) { 
     astNode = AstNodeEntity(
      type: MapPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitMapPatternEntry(MapPatternEntry node) { 
     astNode = AstNodeEntity(
      type: MapPatternEntry,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitMethodDeclaration(MethodDeclaration node) { 
     astNode = AstNodeEntity(
      type: MethodDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitMethodInvocation(MethodInvocation node) { 
     astNode = AstNodeEntity(
      type: MethodInvocation,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitMixinDeclaration(MixinDeclaration node) { 
     astNode = AstNodeEntity(
      type: MixinDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitNamedExpression(NamedExpression node) { 
     astNode = AstNodeEntity(
      type: NamedExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitNamedType(NamedType node) { 
     astNode = AstNodeEntity(
      type: NamedType,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitNativeClause(NativeClause node) { 
     astNode = AstNodeEntity(
      type: NativeClause,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitNativeFunctionBody(NativeFunctionBody node) { 
     astNode = AstNodeEntity(
      type: NativeFunctionBody,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitNullAssertPattern(NullAssertPattern node) { 
     astNode = AstNodeEntity(
      type: NullAssertPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitNullCheckPattern(NullCheckPattern node) { 
     astNode = AstNodeEntity(
      type: NullCheckPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitNullLiteral(NullLiteral node) { 
     astNode = AstNodeEntity(
      type: NullLiteral,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitObjectPattern(ObjectPattern node) { 
     astNode = AstNodeEntity(
      type: ObjectPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitOnClause(OnClause node) { 
     astNode = AstNodeEntity(
      type: OnClause,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitParenthesizedExpression(ParenthesizedExpression node) { 
     astNode = AstNodeEntity(
      type: ParenthesizedExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitParenthesizedPattern(ParenthesizedPattern node) { 
     astNode = AstNodeEntity(
      type: ParenthesizedPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitPartDirective(PartDirective node) { 
     astNode = AstNodeEntity(
      type: PartDirective,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitPartOfDirective(PartOfDirective node) { 
     astNode = AstNodeEntity(
      type: PartOfDirective,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitPatternAssignment(PatternAssignment node) { 
     astNode = AstNodeEntity(
      type: PatternAssignment,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitPatternField(PatternField node) { 
     astNode = AstNodeEntity(
      type: PatternField,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitPatternFieldName(PatternFieldName node) { 
     astNode = AstNodeEntity(
      type: PatternFieldName,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitPatternVariableDeclaration(PatternVariableDeclaration node) { 
     astNode = AstNodeEntity(
      type: PatternVariableDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitPatternVariableDeclarationStatement(PatternVariableDeclarationStatement node) { 
     astNode = AstNodeEntity(
      type: PatternVariableDeclarationStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitPostfixExpression(PostfixExpression node) { 
     astNode = AstNodeEntity(
      type: PostfixExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitPrefixExpression(PrefixExpression node) { 
     astNode = AstNodeEntity(
      type: PrefixExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitPrefixedIdentifier(PrefixedIdentifier node) { 
     astNode = AstNodeEntity(
      type: PrefixedIdentifier,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitPropertyAccess(PropertyAccess node) { 
     astNode = AstNodeEntity(
      type: PropertyAccess,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitRecordLiteral(RecordLiteral node) { 
     astNode = AstNodeEntity(
      type: RecordLiteral,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitRecordPattern(RecordPattern node) { 
     astNode = AstNodeEntity(
      type: RecordPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitRecordTypeAnnotation(RecordTypeAnnotation node) { 
     astNode = AstNodeEntity(
      type: RecordTypeAnnotation,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitRecordTypeAnnotationNamedField(RecordTypeAnnotationNamedField node) { 
     astNode = AstNodeEntity(
      type: RecordTypeAnnotationNamedField,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitRecordTypeAnnotationNamedFields(RecordTypeAnnotationNamedFields node) { 
     astNode = AstNodeEntity(
      type: RecordTypeAnnotationNamedFields,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitRecordTypeAnnotationPositionalField(RecordTypeAnnotationPositionalField node) { 
     astNode = AstNodeEntity(
      type: RecordTypeAnnotationPositionalField,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitRedirectingConstructorInvocation(RedirectingConstructorInvocation node) { 
     astNode = AstNodeEntity(
      type: RedirectingConstructorInvocation,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitRelationalPattern(RelationalPattern node) { 
     astNode = AstNodeEntity(
      type: RelationalPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitRepresentationConstructorName(RepresentationConstructorName node) { 
     astNode = AstNodeEntity(
      type: RepresentationConstructorName,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitRepresentationDeclaration(RepresentationDeclaration node) { 
     astNode = AstNodeEntity(
      type: RepresentationDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitRestPatternElement(RestPatternElement node) { 
     astNode = AstNodeEntity(
      type: RestPatternElement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitRethrowExpression(RethrowExpression node) { 
     astNode = AstNodeEntity(
      type: RethrowExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitReturnStatement(ReturnStatement node) { 
     astNode = AstNodeEntity(
      type: ReturnStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitScriptTag(ScriptTag node) { 
     astNode = AstNodeEntity(
      type: ScriptTag,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSetOrMapLiteral(SetOrMapLiteral node) { 
     astNode = AstNodeEntity(
      type: SetOrMapLiteral,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitShowCombinator(ShowCombinator node) { 
     astNode = AstNodeEntity(
      type: ShowCombinator,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSimpleFormalParameter(SimpleFormalParameter node) { 
     astNode = AstNodeEntity(
      type: SimpleFormalParameter,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSimpleIdentifier(SimpleIdentifier node) { 
     astNode = AstNodeEntity(
      type: SimpleIdentifier,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSimpleStringLiteral(SimpleStringLiteral node) { 
     astNode = AstNodeEntity(
      type: SimpleStringLiteral,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSpreadElement(SpreadElement node) { 
     astNode = AstNodeEntity(
      type: SpreadElement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitStringInterpolation(StringInterpolation node) { 
     astNode = AstNodeEntity(
      type: StringInterpolation,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSuperConstructorInvocation(SuperConstructorInvocation node) { 
     astNode = AstNodeEntity(
      type: SuperConstructorInvocation,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSuperExpression(SuperExpression node) { 
     astNode = AstNodeEntity(
      type: SuperExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSuperFormalParameter(SuperFormalParameter node) { 
     astNode = AstNodeEntity(
      type: SuperFormalParameter,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSwitchCase(SwitchCase node) { 
     astNode = AstNodeEntity(
      type: SwitchCase,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSwitchDefault(SwitchDefault node) { 
     astNode = AstNodeEntity(
      type: SwitchDefault,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSwitchExpression(SwitchExpression node) { 
     astNode = AstNodeEntity(
      type: SwitchExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSwitchExpressionCase(SwitchExpressionCase node) { 
     astNode = AstNodeEntity(
      type: SwitchExpressionCase,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSwitchPatternCase(SwitchPatternCase node) { 
     astNode = AstNodeEntity(
      type: SwitchPatternCase,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSwitchStatement(SwitchStatement node) { 
     astNode = AstNodeEntity(
      type: SwitchStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSymbolLiteral(SymbolLiteral node) { 
     astNode = AstNodeEntity(
      type: SymbolLiteral,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitThisExpression(ThisExpression node) { 
     astNode = AstNodeEntity(
      type: ThisExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitThrowExpression(ThrowExpression node) { 
     astNode = AstNodeEntity(
      type: ThrowExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitTopLevelVariableDeclaration(TopLevelVariableDeclaration node) { 
     astNode = AstNodeEntity(
      type: TopLevelVariableDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitTryStatement(TryStatement node) { 
     astNode = AstNodeEntity(
      type: TryStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitTypeArgumentList(TypeArgumentList node) { 
     astNode = AstNodeEntity(
      type: TypeArgumentList,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitTypeLiteral(TypeLiteral node) { 
     astNode = AstNodeEntity(
      type: TypeLiteral,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitTypeParameter(TypeParameter node) { 
     astNode = AstNodeEntity(
      type: TypeParameter,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitTypeParameterList(TypeParameterList node) { 
     astNode = AstNodeEntity(
      type: TypeParameterList,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitVariableDeclaration(VariableDeclaration node) { 
     astNode = AstNodeEntity(
      type: VariableDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitVariableDeclarationList(VariableDeclarationList node) { 
     astNode = AstNodeEntity(
      type: VariableDeclarationList,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitVariableDeclarationStatement(VariableDeclarationStatement node) { 
     astNode = AstNodeEntity(
      type: VariableDeclarationStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitWhenClause(WhenClause node) { 
     astNode = AstNodeEntity(
      type: WhenClause,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitWhileStatement(WhileStatement node) { 
     astNode = AstNodeEntity(
      type: WhileStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitWildcardPattern(WildcardPattern node) { 
     astNode = AstNodeEntity(
      type: WildcardPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitWithClause(WithClause node) { 
     astNode = AstNodeEntity(
      type: WithClause,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitYieldStatement(YieldStatement node) { 
     astNode = AstNodeEntity(
      type: YieldStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }
  
  @override
  visitAdjacentStrings(AdjacentStrings node) {
    astNode = AstNodeEntity(
      type: AdjacentStrings,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

}