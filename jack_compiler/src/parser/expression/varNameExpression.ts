import { SourceMap } from "../../tokenizer/token";
import {
  ParseFunc,
  between,
  identifier,
  map,
  symbol,
  tup,
} from "../parse-utils";
import { ExpressionNode, parseExpression } from "./expression";

export interface VarNameExpressionNode {
  type: "varNameExpression";
  value: string;
  expression: ExpressionNode;
  sourceMap?: SourceMap;
}

export function varNameExpressionNode(
  value: string,
  expression: ExpressionNode,
  sourceMap?: SourceMap
): VarNameExpressionNode {
  return {
    type: "varNameExpression",
    value,
    expression,
    sourceMap,
  };
}

export const parseVarNameExpression: ParseFunc<VarNameExpressionNode> = (
  input
) =>
  map(
    tup(identifier(), between(symbol("["), parseExpression, symbol("]"))),
    ([value, expression], sourceMap) =>
      varNameExpressionNode(value, expression, sourceMap)
  )(input);
