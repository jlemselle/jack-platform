import {
  ParseFunc,
  identifier,
  keywords,
  or,
  separated,
  symbol,
} from "./parse-utils";

export interface Node {}

export function type(): ParseFunc<string> {
  return or(keywords(["int", "char", "boolean"]), identifier());
}

export function identifierList(): ParseFunc<string[]> {
  return separated(identifier(), symbol(","));
}
