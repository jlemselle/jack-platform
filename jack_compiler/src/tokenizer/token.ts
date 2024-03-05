import { TokenType } from "./token-type";

export interface SourceMap {
  line: number;
  column: number;
}

export type Token = {
  type: TokenType;
  value: string;
  sourceMap?: SourceMap;
};
