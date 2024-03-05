import { SourceMap } from "../../tokenizer/token";
import {
  ParseFunc,
  between,
  identifier,
  left,
  map,
  optional,
  separated,
  symbol,
  tup3,
} from "../parse-utils";
import { ExpressionNode, parseExpression } from "./expression";

export interface SubroutineCallNode {
  type: "subroutineCall";
  classOrVarName: string | undefined;
  subroutineName: string;
  parameters: ExpressionNode[];
  sourceMap?: SourceMap;
}

export function subroutineCallNode(
  classOrVarName: string | undefined,
  subroutineName: string,
  parameters: ExpressionNode[],
  sourceMap?: SourceMap
): SubroutineCallNode {
  return {
    type: "subroutineCall",
    classOrVarName,
    subroutineName,
    parameters,
    sourceMap,
  };
}

export const parseSubroutineCall: ParseFunc<SubroutineCallNode> = (input) =>
  map(
    tup3(
      optional(left(identifier(), symbol("."))),
      identifier(),
      between(symbol("("), separated(parseExpression, symbol(",")), symbol(")"))
    ),
    ([classOrVarName, subroutineName, parameters], sourceMap) =>
      subroutineCallNode(classOrVarName, subroutineName, parameters, sourceMap)
  )(input);
