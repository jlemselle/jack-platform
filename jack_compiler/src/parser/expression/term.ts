import { ParseFunc, between, oneOf, symbol } from "../parse-utils";
import { ExpressionNode, parseExpression } from "./expression";
import { IntegerNode, parseInteger } from "./integer";
import { KeywordNode, parseKeyword } from "./keyword";
import { StringNode, parseString } from "./string";
import { SubroutineCallNode, parseSubroutineCall } from "./subroutineCall";
import { UnaryOpNode, parseUnaryOp } from "./unaryOp";
import { VarNameNode, parseVarName } from "./varName";
import {
  VarNameExpressionNode,
  parseVarNameExpression,
} from "./varNameExpression";

export type TermNode =
  | IntegerNode
  | StringNode
  | KeywordNode
  | UnaryOpNode
  | ExpressionNode
  | VarNameNode
  | VarNameExpressionNode
  | SubroutineCallNode;

export const parseTerm: ParseFunc<TermNode> = (input) =>
  oneOf<TermNode>([
    parseInteger,
    parseString,
    parseKeyword,
    parseUnaryOp,
    between(symbol("("), parseExpression, symbol(")")),
    parseVarNameExpression,
    parseSubroutineCall,
    parseVarName,
  ])(input);
