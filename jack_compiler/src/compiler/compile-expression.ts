import { ExpressionNode, OpNode, TermNode } from "../parser/expression";
import { SubroutineCallNode } from "../parser/expression/subroutineCall";
import { CompilationContext } from "./compilation-context";
import { arithmetic, call, pop, push } from "./vm-commands";

export function compileExpression(
  node: ExpressionNode,
  context: CompilationContext
): string[] {
  return [
    ...compileTerm(node.first, context),
    ...node.additional.flatMap(([op, term]) => [
      ...compileTerm(term, context),
      ...compileOp(op),
    ]),
  ];
}

export function compileOp(node: OpNode): string[] {
  switch (node.value) {
    case "+":
      return [arithmetic("add")];
    case "-":
      return [arithmetic("sub")];
    case "&":
      return [arithmetic("and")];
    case "|":
      return [arithmetic("or")];
    case ">":
      return [arithmetic("gt")];
    case "<":
      return [arithmetic("lt")];
    case "=":
      return [arithmetic("eq")];
  }
  return [];
}

export function compileTerm(
  node: TermNode,
  context: CompilationContext
): string[] {
  switch (node.type) {
    case "integer":
      return [push("constant", node.value)];
    case "string":
      return [
        push("constant", node.value.length),
        call("String.new", 1),
        pop("temp", 1),
        ...Array.from(node.value).flatMap((c) => [
          push("temp", 1),
          push("constant", c.charCodeAt(0)),
          call("String.appendChar", 2),
          pop("temp", 0),
        ]),
        push("temp", 1),
      ];
    case "keyword":
      switch (node.value) {
        case "true":
          return [push("constant", 0), arithmetic("not")];
        case "false":
        case "null":
          return [push("constant", 0)];
        case "this":
          return [push("pointer", 0)];
        default:
          return [];
      }
    case "unary":
      switch (node.op) {
        case "-":
          return [...compileTerm(node.value, context), arithmetic("neg")];
        case "~":
          return [...compileTerm(node.value, context), arithmetic("not")];
        default:
          return [];
      }
    case "expression":
      return compileExpression(node, context);
    case "subroutineCall":
      return compileSubroutineCall(node, context);
    case "varName":
      var variable = context.resolve(node.value);
      return [push(variable.kind, variable.index, node.sourceMap)];
    case "varNameExpression":
      var variable = context.resolve(node.value);
      return [
        push(variable.kind, variable.index),
        ...compileExpression(node.expression, context),
        arithmetic("add"),
        pop("pointer", 1),
        push("that", 0),
      ];
  }
}

export function compileSubroutineCall(
  node: SubroutineCallNode,
  context: CompilationContext
): string[] {
  let subroutineName = node.subroutineName;
  if (node.classOrVarName) {
    try {
      // lookup variable
      const variable = context.resolve(node.classOrVarName);
      subroutineName = `${variable.type}.${node.subroutineName}`;
      return [
        push(variable.kind, variable.index),
        ...node.parameters.flatMap((x) => compileExpression(x, context)),
        call(subroutineName, node.parameters.length + 1),
      ];
    } catch {
      // static function
      subroutineName = `${node.classOrVarName}.${node.subroutineName}`;
      return [
        ...node.parameters.flatMap((x) => compileExpression(x, context)),
        call(subroutineName, node.parameters.length),
      ];
    }
  }

  if (context.activeClassName) {
    // call in current class
    subroutineName = `${context.activeClassName}.${node.subroutineName}`;
    return [
      push("pointer", 0),
      ...node.parameters.flatMap((x) => compileExpression(x, context)),
      call(subroutineName, node.parameters.length + 1),
    ];
  } else {
    // classless function
    return [
      ...node.parameters.flatMap((x) => compileExpression(x, context)),
      call(subroutineName, node.parameters.length),
    ];
  }
}
