import {
  ExpressionNode,
  expressionNode,
  keywordNode,
  parseExpression,
} from "./expression";
import {
  SubroutineCallNode,
  parseSubroutineCall,
} from "./expression/subroutineCall";
import {
  ParseFunc,
  between,
  identifier,
  keyword,
  many,
  map,
  oneOf,
  optional,
  right,
  symbol,
  tup,
  tup3,
} from "./parse-utils";

export const parseStatement: ParseFunc<StatementNode> = (input) =>
  oneOf<StatementNode>([
    parseLetStatement,
    parseIfStatement,
    parseWhileStatement,
    parseDoStatement,
    parseReturnStatement,
  ])(input);

export const parseStatements: ParseFunc<StatementNode[]> = many(parseStatement);

export const parseLetStatement: ParseFunc<LetStatementNode> = map(
  tup3(
    right(keyword("let"), identifier()),
    optional(between(symbol("["), parseExpression, symbol("]"))),
    between(symbol("="), parseExpression, symbol(";"))
  ),
  ([varName, accessor, value]) => letStatementNode(varName, accessor, value)
);

export const parseIfStatement: ParseFunc<IfStatementNode> = map(
  tup3(
    right(keyword("if"), between(symbol("("), parseExpression, symbol(")"))),
    between(symbol("{"), many(parseStatement), symbol("}")),
    optional(
      right(
        keyword("else"),
        between(symbol("{"), many(parseStatement), symbol("}"))
      )
    )
  ),
  ([condition, thenBlock, elseBlock]) =>
    ifStatementNode(condition, thenBlock, elseBlock)
);

export const parseWhileStatement: ParseFunc<WhileStatementNode> = map(
  tup(
    right(keyword("while"), between(symbol("("), parseExpression, symbol(")"))),
    between(symbol("{"), many(parseStatement), symbol("}"))
  ),
  ([condition, block]) => whileStatementNode(condition, block)
);

export const parseDoStatement: ParseFunc<DoStatementNode> = map(
  between(keyword("do"), parseSubroutineCall, symbol(";")),
  (subroutineCall) => doStatementNode(subroutineCall)
);

export const parseReturnStatement: ParseFunc<ReturnStatementNode> = map(
  between(keyword("return"), optional(parseExpression), symbol(";")),
  (value) => returnStatementNode(value ?? expressionNode(keywordNode("null")))
);

export type StatementNode =
  | LetStatementNode
  | IfStatementNode
  | WhileStatementNode
  | DoStatementNode
  | ReturnStatementNode;

export interface LetStatementNode {
  type: "letStatement";
  varName: string;
  accessor?: ExpressionNode;
  value: ExpressionNode;
}

export function letStatementNode(
  varName: string,
  accessor: ExpressionNode | undefined,
  value: ExpressionNode
): LetStatementNode {
  return {
    type: "letStatement",
    varName,
    accessor,
    value,
  };
}

export interface IfStatementNode {
  type: "ifStatement";
  condition: ExpressionNode;
  thenBlock: StatementNode[];
  elseBlock?: StatementNode[];
}

export function ifStatementNode(
  condition: ExpressionNode,
  thenBlock: StatementNode[],
  elseBlock?: StatementNode[]
): IfStatementNode {
  return {
    type: "ifStatement",
    condition,
    thenBlock,
    elseBlock,
  };
}

export interface WhileStatementNode {
  type: "whileStatement";
  condition: ExpressionNode;
  block: StatementNode[];
}

export function whileStatementNode(
  condition: ExpressionNode,
  block: StatementNode[]
): WhileStatementNode {
  return {
    type: "whileStatement",
    condition,
    block,
  };
}

export interface DoStatementNode {
  type: "doStatement";
  subroutineCall: SubroutineCallNode;
}

export function doStatementNode(
  subroutineCall: SubroutineCallNode
): DoStatementNode {
  return {
    type: "doStatement",
    subroutineCall,
  };
}

export interface ReturnStatementNode {
  type: "returnStatement";
  value: ExpressionNode;
}

export function returnStatementNode(
  value: ExpressionNode
): ReturnStatementNode {
  return {
    type: "returnStatement",
    value,
  };
}
