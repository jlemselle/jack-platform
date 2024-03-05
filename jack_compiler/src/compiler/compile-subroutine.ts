import { expressionNode, keywordNode } from "../parser/expression";
import {
  DoStatementNode,
  IfStatementNode,
  LetStatementNode,
  ReturnStatementNode,
  StatementNode,
  WhileStatementNode,
  returnStatementNode,
} from "../parser/statement";
import { SubroutineNode } from "../parser/subroutine";
import { CompilationContext } from "./compilation-context";
import { compileExpression, compileSubroutineCall } from "./compile-expression";
import {
  arithmetic,
  call,
  goto,
  ifGoto,
  label,
  pop,
  push,
  subroutine,
} from "./vm-commands";

export function compileSubroutine(
  node: SubroutineNode,
  context: CompilationContext
): string[] {
  const subroutineName = context.activeClassName
    ? `${context.activeClassName}.${node.subroutineName}`
    : node.subroutineName;
  context.setSubroutine(node);
  const result = [
    subroutine(subroutineName, context.locals.count()),
    ...initSubroutine(node.kind, context.fields.count()),
    ...node.statements.flatMap((x) => compileStatement(x, context)),
    ...(node.statements.find((x: StatementNode) => x.type === "returnStatement")
      ? []
      : compileReturnStatement(
          returnStatementNode(expressionNode(keywordNode("null"))),
          context
        )),
  ];
  context.clearSubroutine();
  return result;
}

export function initSubroutine(kind: string, fieldCount: number) {
  if (kind === "constructor") {
    return [
      push("constant", fieldCount),
      call("Memory.alloc", 1),
      pop("pointer", 0),
    ];
  }

  if (kind === "method") {
    return [push("argument", 0), pop("pointer", 0)];
  }

  return [];
}

export function compileStatements(
  nodes: StatementNode[],
  context: CompilationContext
) {
  return nodes.flatMap((x) => compileStatement(x, context));
}

export function compileStatement(
  node: StatementNode,
  context: CompilationContext
): string[] {
  switch (node.type) {
    case "letStatement":
      return compileLetStatement(node, context);
    case "returnStatement":
      return compileReturnStatement(node, context);
    case "ifStatement":
      return compileIfStatement(node, context);
    case "whileStatement":
      return compileWhileStatement(node, context);
    case "doStatement":
      return compileDoStatement(node, context);
    default:
      return [];
  }
}

export function compileReturnStatement(
  node: ReturnStatementNode,
  context: CompilationContext
): string[] {
  return [...compileExpression(node.value, context), "return"];
}

export function compileLetStatement(
  node: LetStatementNode,
  context: CompilationContext
): string[] {
  var variable = context.resolve(node.varName);

  if (node.accessor) {
    return [
      push(variable.kind, variable.index),
      ...compileExpression(node.accessor, context),
      arithmetic("add"),
      ...compileExpression(node.value, context),
      pop("temp", 0),
      pop("pointer", 1),
      push("temp", 0),
      pop("that", 0),
    ];
  }

  return [
    ...compileExpression(node.value, context),
    pop(variable.kind, variable.index),
  ];
}

export function compileIfStatement(
  node: IfStatementNode,
  context: CompilationContext
): string[] {
  const thenBlock = context.uniqueLabel("thenBlock");
  const endIf = context.uniqueLabel("endIf");
  return [
    ...compileExpression(node.condition, context),
    ifGoto(thenBlock),
    ...(node.elseBlock?.flatMap((x) => compileStatement(x, context)) ?? []),
    goto(endIf),
    label(thenBlock),
    ...node.thenBlock.flatMap((x) => compileStatement(x, context)),
    label(endIf),
  ];
}

export function compileWhileStatement(
  node: WhileStatementNode,
  context: CompilationContext
): string[] {
  const startWhile = context.uniqueLabel("startWhile");
  const whileBlock = context.uniqueLabel("whileBlock");

  return [
    goto(startWhile),
    label(whileBlock),
    ...node.block.flatMap((x) => compileStatement(x, context)),
    label(startWhile),
    ...compileExpression(node.condition, context),
    ifGoto(whileBlock),
  ];
}

export function compileDoStatement(
  node: DoStatementNode,
  context: CompilationContext
): string[] {
  return compileSubroutineCall(node.subroutineCall, context);
}
