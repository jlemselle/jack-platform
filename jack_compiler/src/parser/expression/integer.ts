import { SourceMap } from "../../tokenizer/token";
import { ParseFunc, map, number } from "../parse-utils";

export interface IntegerNode {
  type: "integer";
  value: number;
  sourceMap?: SourceMap;
}

export function integerNode(value: number, sourceMap?: SourceMap): IntegerNode {
  return {
    type: "integer",
    value: value,
    sourceMap,
  };
}

export const parseInteger: ParseFunc<IntegerNode> = map(number(), (s) =>
  integerNode(+s)
);
