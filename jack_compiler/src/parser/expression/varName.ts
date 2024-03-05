import { SourceMap } from "../../tokenizer/token";
import { ParseFunc, identifier, map } from "../parse-utils";

export interface VarNameNode {
  type: "varName";
  value: string;
  sourceMap?: SourceMap;
}

export function varNameNode(value: string, sourceMap?: SourceMap): VarNameNode {
  return {
    type: "varName",
    value,
    sourceMap,
  };
}

export const parseVarName: ParseFunc<VarNameNode> = map(
  identifier(),
  varNameNode
);
