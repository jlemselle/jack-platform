import { SourceMap } from "../../tokenizer/token";
import { ParseFunc, keywords, map } from "../parse-utils";

export interface KeywordNode {
  type: "keyword";
  value: string;
  sourceMap?: SourceMap;
}

export function keywordNode(value: string, sourceMap?: SourceMap): KeywordNode {
  return {
    type: "keyword",
    value: value,
    sourceMap,
  };
}

export const parseKeyword: ParseFunc<KeywordNode> = map(
  keywords(["true", "false", "null", "this"]),
  keywordNode
);
