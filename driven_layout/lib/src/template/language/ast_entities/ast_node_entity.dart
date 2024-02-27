import 'package:analyzer/dart/ast/visitor.dart' show ThrowingAstVisitor;
import 'package:driven_layout/src/template/language/ast_entities/ast_leaf.dart';
import 'package:driven_layout/src/template/language/ast_entities/node_types.dart';
import 'ast_entity.dart' show AstEntity;

class AstNodeEntity extends AstEntity {
  final Type _nodeType;
  final List<AstEntity> childEntities;

  Type get type => _nodeType;

  const AstNodeEntity({ required Type type, required this.childEntities}) : _nodeType = type;

  factory AstNodeEntity.from(AstNode node) {
    final nodeFactory = _Factory();
    node.accept(nodeFactory);
    return nodeFactory.astNode;
  }
}

final class _Factory implements ThrowingAstVisitor {
  AstNodeEntity? _astNode;

  AstNodeEntity get astNode => _astNode ?? (throw UnimplementedError());
  
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
     _astNode = AstNodeEntity(
      type: Annotation,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitArgumentList(ArgumentList node) { 
     _astNode = AstNodeEntity(
      type: ArgumentList,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitAsExpression(AsExpression node) { 
     _astNode = AstNodeEntity(
      type: AsExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitAssertInitializer(AssertInitializer node) { 
     _astNode = AstNodeEntity(
      type: AssertInitializer,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitAssertStatement(AssertStatement node) { 
     _astNode = AstNodeEntity(
      type: AssertStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitAssignedVariablePattern(AssignedVariablePattern node) { 
     _astNode = AstNodeEntity(
      type: AssignedVariablePattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitAssignmentExpression(AssignmentExpression node) { 
     _astNode = AstNodeEntity(
      type: AssignmentExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitAugmentationImportDirective(AugmentationImportDirective node) { 
     _astNode = AstNodeEntity(
      type: AugmentationImportDirective,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitAwaitExpression(AwaitExpression node) { 
     _astNode = AstNodeEntity(
      type: AwaitExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitBinaryExpression(BinaryExpression node) { 
     _astNode = AstNodeEntity(
      type: BinaryExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitBlock(Block node) { 
     _astNode = AstNodeEntity(
      type: Block,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitBlockFunctionBody(BlockFunctionBody node) { 
     _astNode = AstNodeEntity(
      type: BlockFunctionBody,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitBooleanLiteral(BooleanLiteral node) { 
     _astNode = AstNodeEntity(
      type: BooleanLiteral,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitBreakStatement(BreakStatement node) { 
     _astNode = AstNodeEntity(
      type: BreakStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitCascadeExpression(CascadeExpression node) { 
     _astNode = AstNodeEntity(
      type: CascadeExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitCaseClause(CaseClause node) { 
     _astNode = AstNodeEntity(
      type: CaseClause,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitCastPattern(CastPattern node) { 
     _astNode = AstNodeEntity(
      type: CastPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitCatchClause(CatchClause node) { 
     _astNode = AstNodeEntity(
      type: CatchClause,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitCatchClauseParameter(CatchClauseParameter node) { 
     _astNode = AstNodeEntity(
      type: CatchClauseParameter,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitClassDeclaration(ClassDeclaration node) { 
     _astNode = AstNodeEntity(
      type: ClassDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitClassTypeAlias(ClassTypeAlias node) { 
     _astNode = AstNodeEntity(
      type: ClassTypeAlias,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitComment(Comment node) { 
     _astNode = AstNodeEntity(
      type: Comment,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitCommentReference(CommentReference node) { 
     _astNode = AstNodeEntity(
      type: CommentReference,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitCompilationUnit(CompilationUnit node) { 
     _astNode = AstNodeEntity(
      type: CompilationUnit,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitConditionalExpression(ConditionalExpression node) { 
     _astNode = AstNodeEntity(
      type: ConditionalExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitConfiguration(Configuration node) { 
     _astNode = AstNodeEntity(
      type: Configuration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitConstantPattern(ConstantPattern node) { 
     _astNode = AstNodeEntity(
      type: ConstantPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitConstructorDeclaration(ConstructorDeclaration node) { 
     _astNode = AstNodeEntity(
      type: ConstructorDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitConstructorFieldInitializer(ConstructorFieldInitializer node) { 
     _astNode = AstNodeEntity(
      type: ConstructorFieldInitializer,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitConstructorName(ConstructorName node) { 
     _astNode = AstNodeEntity(
      type: ConstructorName,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitConstructorReference(ConstructorReference node) { 
     _astNode = AstNodeEntity(
      type: ConstructorReference,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitConstructorSelector(ConstructorSelector node) { 
     _astNode = AstNodeEntity(
      type: ConstructorSelector,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitContinueStatement(ContinueStatement node) { 
     _astNode = AstNodeEntity(
      type: ContinueStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitDeclaredIdentifier(DeclaredIdentifier node) { 
     _astNode = AstNodeEntity(
      type: DeclaredIdentifier,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitDeclaredVariablePattern(DeclaredVariablePattern node) { 
     _astNode = AstNodeEntity(
      type: DeclaredVariablePattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitDefaultFormalParameter(DefaultFormalParameter node) { 
     _astNode = AstNodeEntity(
      type: DefaultFormalParameter,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitDoStatement(DoStatement node) { 
     _astNode = AstNodeEntity(
      type: DoStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitDottedName(DottedName node) { 
     _astNode = AstNodeEntity(
      type: DottedName,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitDoubleLiteral(DoubleLiteral node) { 
     _astNode = AstNodeEntity(
      type: DoubleLiteral,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitEmptyFunctionBody(EmptyFunctionBody node) { 
     _astNode = AstNodeEntity(
      type: EmptyFunctionBody,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitEmptyStatement(EmptyStatement node) { 
     _astNode = AstNodeEntity(
      type: EmptyStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitEnumConstantArguments(EnumConstantArguments node) { 
     _astNode = AstNodeEntity(
      type: EnumConstantArguments,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitEnumConstantDeclaration(EnumConstantDeclaration node) { 
     _astNode = AstNodeEntity(
      type: EnumConstantDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitEnumDeclaration(EnumDeclaration node) { 
     _astNode = AstNodeEntity(
      type: EnumDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitExportDirective(ExportDirective node) { 
     _astNode = AstNodeEntity(
      type: ExportDirective,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitExpressionFunctionBody(ExpressionFunctionBody node) { 
     _astNode = AstNodeEntity(
      type: ExpressionFunctionBody,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitExpressionStatement(ExpressionStatement node) { 
     _astNode = AstNodeEntity(
      type: ExpressionStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitExtendsClause(ExtendsClause node) { 
     _astNode = AstNodeEntity(
      type: ExtendsClause,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitExtensionDeclaration(ExtensionDeclaration node) { 
     _astNode = AstNodeEntity(
      type: ExtensionDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitExtensionOverride(ExtensionOverride node) { 
     _astNode = AstNodeEntity(
      type: ExtensionOverride,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitExtensionTypeDeclaration(ExtensionTypeDeclaration node) { 
     _astNode = AstNodeEntity(
      type: ExtensionTypeDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitFieldDeclaration(FieldDeclaration node) { 
     _astNode = AstNodeEntity(
      type: FieldDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitFieldFormalParameter(FieldFormalParameter node) { 
     _astNode = AstNodeEntity(
      type: FieldFormalParameter,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitForEachPartsWithDeclaration(ForEachPartsWithDeclaration node) { 
     _astNode = AstNodeEntity(
      type: ForEachPartsWithDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitForEachPartsWithIdentifier(ForEachPartsWithIdentifier node) { 
     _astNode = AstNodeEntity(
      type: ForEachPartsWithIdentifier,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitForEachPartsWithPattern(ForEachPartsWithPattern node) { 
     _astNode = AstNodeEntity(
      type: ForEachPartsWithPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitForElement(ForElement node) { 
     _astNode = AstNodeEntity(
      type: ForElement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitForPartsWithDeclarations(ForPartsWithDeclarations node) { 
     _astNode = AstNodeEntity(
      type: ForPartsWithDeclarations,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitForPartsWithExpression(ForPartsWithExpression node) { 
     _astNode = AstNodeEntity(
      type: ForPartsWithExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitForPartsWithPattern(ForPartsWithPattern node) { 
     _astNode = AstNodeEntity(
      type: ForPartsWithPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitForStatement(ForStatement node) { 
     _astNode = AstNodeEntity(
      type: ForStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitFormalParameterList(FormalParameterList node) { 
     _astNode = AstNodeEntity(
      type: FormalParameterList,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitFunctionDeclaration(FunctionDeclaration node) { 
     _astNode = AstNodeEntity(
      type: FunctionDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitFunctionDeclarationStatement(FunctionDeclarationStatement node) { 
     _astNode = AstNodeEntity(
      type: FunctionDeclarationStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitFunctionExpression(FunctionExpression node) { 
     _astNode = AstNodeEntity(
      type: FunctionExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitFunctionExpressionInvocation(FunctionExpressionInvocation node) { 
     _astNode = AstNodeEntity(
      type: FunctionExpressionInvocation,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitFunctionReference(FunctionReference node) { 
     _astNode = AstNodeEntity(
      type: FunctionReference,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitFunctionTypeAlias(FunctionTypeAlias node) { 
     _astNode = AstNodeEntity(
      type: FunctionTypeAlias,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitFunctionTypedFormalParameter(FunctionTypedFormalParameter node) { 
     _astNode = AstNodeEntity(
      type: FunctionTypedFormalParameter,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitGenericFunctionType(GenericFunctionType node) { 
     _astNode = AstNodeEntity(
      type: GenericFunctionType,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitGenericTypeAlias(GenericTypeAlias node) { 
     _astNode = AstNodeEntity(
      type: GenericTypeAlias,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitGuardedPattern(GuardedPattern node) { 
     _astNode = AstNodeEntity(
      type: GuardedPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitHideCombinator(HideCombinator node) { 
     _astNode = AstNodeEntity(
      type: HideCombinator,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitIfElement(IfElement node) { 
     _astNode = AstNodeEntity(
      type: IfElement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitIfStatement(IfStatement node) { 
     _astNode = AstNodeEntity(
      type: IfStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitImplementsClause(ImplementsClause node) { 
     _astNode = AstNodeEntity(
      type: ImplementsClause,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitImplicitCallReference(ImplicitCallReference node) { 
     _astNode = AstNodeEntity(
      type: ImplicitCallReference,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitImportDirective(ImportDirective node) { 
     _astNode = AstNodeEntity(
      type: ImportDirective,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitImportPrefixReference(ImportPrefixReference node) { 
     _astNode = AstNodeEntity(
      type: ImportPrefixReference,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitIndexExpression(IndexExpression node) { 
     _astNode = AstNodeEntity(
      type: IndexExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitInstanceCreationExpression(InstanceCreationExpression node) { 
     _astNode = AstNodeEntity(
      type: InstanceCreationExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitIntegerLiteral(IntegerLiteral node) { 
     _astNode = AstNodeEntity(
      type: IntegerLiteral,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitInterpolationExpression(InterpolationExpression node) { 
     _astNode = AstNodeEntity(
      type: InterpolationExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitInterpolationString(InterpolationString node) { 
     _astNode = AstNodeEntity(
      type: InterpolationString,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitIsExpression(IsExpression node) { 
     _astNode = AstNodeEntity(
      type: IsExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitLabel(Label node) { 
     _astNode = AstNodeEntity(
      type: Label,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitLabeledStatement(LabeledStatement node) { 
     _astNode = AstNodeEntity(
      type: LabeledStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitLibraryAugmentationDirective(LibraryAugmentationDirective node) { 
     _astNode = AstNodeEntity(
      type: LibraryAugmentationDirective,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitLibraryDirective(LibraryDirective node) { 
     _astNode = AstNodeEntity(
      type: LibraryDirective,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitLibraryIdentifier(LibraryIdentifier node) { 
     _astNode = AstNodeEntity(
      type: LibraryIdentifier,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitListLiteral(ListLiteral node) { 
     _astNode = AstNodeEntity(
      type: ListLiteral,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitListPattern(ListPattern node) { 
     _astNode = AstNodeEntity(
      type: ListPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitLogicalAndPattern(LogicalAndPattern node) { 
     _astNode = AstNodeEntity(
      type: LogicalAndPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitLogicalOrPattern(LogicalOrPattern node) { 
     _astNode = AstNodeEntity(
      type: LogicalOrPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitMapLiteralEntry(MapLiteralEntry node) { 
     _astNode = AstNodeEntity(
      type: MapLiteralEntry,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitMapPattern(MapPattern node) { 
     _astNode = AstNodeEntity(
      type: MapPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitMapPatternEntry(MapPatternEntry node) { 
     _astNode = AstNodeEntity(
      type: MapPatternEntry,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitMethodDeclaration(MethodDeclaration node) { 
     _astNode = AstNodeEntity(
      type: MethodDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitMethodInvocation(MethodInvocation node) { 
     _astNode = AstNodeEntity(
      type: MethodInvocation,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitMixinDeclaration(MixinDeclaration node) { 
     _astNode = AstNodeEntity(
      type: MixinDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitNamedExpression(NamedExpression node) { 
     _astNode = AstNodeEntity(
      type: NamedExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitNamedType(NamedType node) { 
     _astNode = AstNodeEntity(
      type: NamedType,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitNativeClause(NativeClause node) { 
     _astNode = AstNodeEntity(
      type: NativeClause,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitNativeFunctionBody(NativeFunctionBody node) { 
     _astNode = AstNodeEntity(
      type: NativeFunctionBody,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitNullAssertPattern(NullAssertPattern node) { 
     _astNode = AstNodeEntity(
      type: NullAssertPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitNullCheckPattern(NullCheckPattern node) { 
     _astNode = AstNodeEntity(
      type: NullCheckPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitNullLiteral(NullLiteral node) { 
     _astNode = AstNodeEntity(
      type: NullLiteral,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitObjectPattern(ObjectPattern node) { 
     _astNode = AstNodeEntity(
      type: ObjectPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitOnClause(OnClause node) { 
     _astNode = AstNodeEntity(
      type: OnClause,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitParenthesizedExpression(ParenthesizedExpression node) { 
     _astNode = AstNodeEntity(
      type: ParenthesizedExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitParenthesizedPattern(ParenthesizedPattern node) { 
     _astNode = AstNodeEntity(
      type: ParenthesizedPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitPartDirective(PartDirective node) { 
     _astNode = AstNodeEntity(
      type: PartDirective,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitPartOfDirective(PartOfDirective node) { 
     _astNode = AstNodeEntity(
      type: PartOfDirective,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitPatternAssignment(PatternAssignment node) { 
     _astNode = AstNodeEntity(
      type: PatternAssignment,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitPatternField(PatternField node) { 
     _astNode = AstNodeEntity(
      type: PatternField,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitPatternFieldName(PatternFieldName node) { 
     _astNode = AstNodeEntity(
      type: PatternFieldName,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitPatternVariableDeclaration(PatternVariableDeclaration node) { 
     _astNode = AstNodeEntity(
      type: PatternVariableDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitPatternVariableDeclarationStatement(PatternVariableDeclarationStatement node) { 
     _astNode = AstNodeEntity(
      type: PatternVariableDeclarationStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitPostfixExpression(PostfixExpression node) { 
     _astNode = AstNodeEntity(
      type: PostfixExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitPrefixExpression(PrefixExpression node) { 
     _astNode = AstNodeEntity(
      type: PrefixExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitPrefixedIdentifier(PrefixedIdentifier node) { 
     _astNode = AstNodeEntity(
      type: PrefixedIdentifier,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitPropertyAccess(PropertyAccess node) { 
     _astNode = AstNodeEntity(
      type: PropertyAccess,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitRecordLiteral(RecordLiteral node) { 
     _astNode = AstNodeEntity(
      type: RecordLiteral,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitRecordPattern(RecordPattern node) { 
     _astNode = AstNodeEntity(
      type: RecordPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitRecordTypeAnnotation(RecordTypeAnnotation node) { 
     _astNode = AstNodeEntity(
      type: RecordTypeAnnotation,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitRecordTypeAnnotationNamedField(RecordTypeAnnotationNamedField node) { 
     _astNode = AstNodeEntity(
      type: RecordTypeAnnotationNamedField,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitRecordTypeAnnotationNamedFields(RecordTypeAnnotationNamedFields node) { 
     _astNode = AstNodeEntity(
      type: RecordTypeAnnotationNamedFields,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitRecordTypeAnnotationPositionalField(RecordTypeAnnotationPositionalField node) { 
     _astNode = AstNodeEntity(
      type: RecordTypeAnnotationPositionalField,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitRedirectingConstructorInvocation(RedirectingConstructorInvocation node) { 
     _astNode = AstNodeEntity(
      type: RedirectingConstructorInvocation,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitRelationalPattern(RelationalPattern node) { 
     _astNode = AstNodeEntity(
      type: RelationalPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitRepresentationConstructorName(RepresentationConstructorName node) { 
     _astNode = AstNodeEntity(
      type: RepresentationConstructorName,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitRepresentationDeclaration(RepresentationDeclaration node) { 
     _astNode = AstNodeEntity(
      type: RepresentationDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitRestPatternElement(RestPatternElement node) { 
     _astNode = AstNodeEntity(
      type: RestPatternElement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitRethrowExpression(RethrowExpression node) { 
     _astNode = AstNodeEntity(
      type: RethrowExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitReturnStatement(ReturnStatement node) { 
     _astNode = AstNodeEntity(
      type: ReturnStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitScriptTag(ScriptTag node) { 
     _astNode = AstNodeEntity(
      type: ScriptTag,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSetOrMapLiteral(SetOrMapLiteral node) { 
     _astNode = AstNodeEntity(
      type: SetOrMapLiteral,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitShowCombinator(ShowCombinator node) { 
     _astNode = AstNodeEntity(
      type: ShowCombinator,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSimpleFormalParameter(SimpleFormalParameter node) { 
     _astNode = AstNodeEntity(
      type: SimpleFormalParameter,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSimpleIdentifier(SimpleIdentifier node) { 
     _astNode = AstNodeEntity(
      type: SimpleIdentifier,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSimpleStringLiteral(SimpleStringLiteral node) { 
     _astNode = AstNodeEntity(
      type: SimpleStringLiteral,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSpreadElement(SpreadElement node) { 
     _astNode = AstNodeEntity(
      type: SpreadElement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitStringInterpolation(StringInterpolation node) { 
     _astNode = AstNodeEntity(
      type: StringInterpolation,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSuperConstructorInvocation(SuperConstructorInvocation node) { 
     _astNode = AstNodeEntity(
      type: SuperConstructorInvocation,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSuperExpression(SuperExpression node) { 
     _astNode = AstNodeEntity(
      type: SuperExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSuperFormalParameter(SuperFormalParameter node) { 
     _astNode = AstNodeEntity(
      type: SuperFormalParameter,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSwitchCase(SwitchCase node) { 
     _astNode = AstNodeEntity(
      type: SwitchCase,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSwitchDefault(SwitchDefault node) { 
     _astNode = AstNodeEntity(
      type: SwitchDefault,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSwitchExpression(SwitchExpression node) { 
     _astNode = AstNodeEntity(
      type: SwitchExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSwitchExpressionCase(SwitchExpressionCase node) { 
     _astNode = AstNodeEntity(
      type: SwitchExpressionCase,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSwitchPatternCase(SwitchPatternCase node) { 
     _astNode = AstNodeEntity(
      type: SwitchPatternCase,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSwitchStatement(SwitchStatement node) { 
     _astNode = AstNodeEntity(
      type: SwitchStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitSymbolLiteral(SymbolLiteral node) { 
     _astNode = AstNodeEntity(
      type: SymbolLiteral,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitThisExpression(ThisExpression node) { 
     _astNode = AstNodeEntity(
      type: ThisExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitThrowExpression(ThrowExpression node) { 
     _astNode = AstNodeEntity(
      type: ThrowExpression,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitTopLevelVariableDeclaration(TopLevelVariableDeclaration node) { 
     _astNode = AstNodeEntity(
      type: TopLevelVariableDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitTryStatement(TryStatement node) { 
     _astNode = AstNodeEntity(
      type: TryStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitTypeArgumentList(TypeArgumentList node) { 
     _astNode = AstNodeEntity(
      type: TypeArgumentList,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitTypeLiteral(TypeLiteral node) { 
     _astNode = AstNodeEntity(
      type: TypeLiteral,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitTypeParameter(TypeParameter node) { 
     _astNode = AstNodeEntity(
      type: TypeParameter,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitTypeParameterList(TypeParameterList node) { 
     _astNode = AstNodeEntity(
      type: TypeParameterList,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitVariableDeclaration(VariableDeclaration node) { 
     _astNode = AstNodeEntity(
      type: VariableDeclaration,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitVariableDeclarationList(VariableDeclarationList node) { 
     _astNode = AstNodeEntity(
      type: VariableDeclarationList,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitVariableDeclarationStatement(VariableDeclarationStatement node) { 
     _astNode = AstNodeEntity(
      type: VariableDeclarationStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitWhenClause(WhenClause node) { 
     _astNode = AstNodeEntity(
      type: WhenClause,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitWhileStatement(WhileStatement node) { 
     _astNode = AstNodeEntity(
      type: WhileStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitWildcardPattern(WildcardPattern node) { 
     _astNode = AstNodeEntity(
      type: WildcardPattern,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitWithClause(WithClause node) { 
     _astNode = AstNodeEntity(
      type: WithClause,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

  @override
  visitYieldStatement(YieldStatement node) { 
     _astNode = AstNodeEntity(
      type: YieldStatement,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }
  
  @override
  visitAdjacentStrings(AdjacentStrings node) {
    _astNode = AstNodeEntity(
      type: AdjacentStrings,
      childEntities: node.childEntities.map(_mapChild).toList(),
    );
  }

}