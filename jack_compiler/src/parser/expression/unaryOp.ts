import { SourceMap } from "../../tokenizer/token";
import { ParseFunc, map, symbols, tup } from "../parse-utils";
import { TermNode, parseTerm } from "./term";

export interface UnaryOpNode {
  type: "unary";
  op: string;
  value: TermNode;
  sourceMap?: SourceMap;
}

export function unaryOpNode(
  op: string,
  value: TermNode,
  sourceMap?: SourceMap
): UnaryOpNode {
  return {
    type: "unary",
    op,
    value,
    sourceMap,
  };
}

export const parseUnaryOp: ParseFunc<UnaryOpNode> = (input) =>
  map(tup(symbols(["-", "~"]), parseTerm), ([op, value], sourceMap) =>
    unaryOpNode(op, value, sourceMap)
  )(input);
