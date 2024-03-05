import { SourceMap } from "../../tokenizer/token";
import { ParseFunc, map, symbols } from "../parse-utils";

export interface OpNode {
  type: "op";
  value: string;
  sourceMap?: SourceMap;
}

export function opNode(value: string, sourceMap?: SourceMap): OpNode {
  return {
    type: "op",
    value,
    sourceMap,
  };
}

export const parseOp: ParseFunc<OpNode> = map(
  symbols(["+", "-", "*", "/", "&", "|", "<", ">", "="]),
  opNode
);
