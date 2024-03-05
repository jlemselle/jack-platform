import { SourceMap } from "../../tokenizer/token";
import { ParseFunc, map, string } from "../parse-utils";

export interface StringNode {
  type: "string";
  value: string;
  sourceMap?: SourceMap;
}

export function stringNode(value: string, sourceMap?: SourceMap): StringNode {
  return {
    type: "string",
    value: value,
    sourceMap,
  };
}

export const parseString: ParseFunc<StringNode> = map(string(), stringNode);
