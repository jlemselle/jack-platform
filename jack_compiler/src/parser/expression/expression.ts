import { ParseFunc, many, map, tup } from "../parse-utils";
import { OpNode, parseOp } from "./op";
import { TermNode, parseTerm } from "./term";

export interface ExpressionNode {
  type: "expression";
  first: TermNode;
  additional: [OpNode, TermNode][];
}

export function expressionNode(
  first: TermNode,
  additional?: [OpNode, TermNode][]
): ExpressionNode {
  return {
    type: "expression",
    first,
    additional: additional ?? [],
  };
}

export const parseExpression: ParseFunc<ExpressionNode> = map(
  tup(parseTerm, many(tup(parseOp, parseTerm))),
  ([term, additional]) => expressionNode(term, additional)
);
