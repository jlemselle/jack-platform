import { Node, identifierList, type } from "./common";
import {
  ParseFunc,
  between,
  identifier,
  keyword,
  keywords,
  left,
  many,
  map,
  right,
  symbol,
  tup,
  tup3,
} from "./parse-utils";
import { SubroutineNode, subroutineList } from "./subroutine";

export interface ClassNode extends Node {
  type: "class";
  name: string;
  varDecs: ClassVarDecNode[];
  subroutines: SubroutineNode[];
}

export interface ClassVarDecNode extends Node {
  type: "classVarDec";
  kind: string;
  varType: string;
  name: string;
}

export function parseClass(): ParseFunc<ClassNode> {
  return map(
    tup(
      right(keyword("class"), identifier()),
      between(
        symbol("{"),
        tup(classVarDecList(), subroutineList()),
        symbol("}")
      )
    ),
    ([className, [varDecs, subroutines]]) => ({
      type: "class",
      name: className,
      varDecs: varDecs,
      subroutines: subroutines,
    })
  );
}

function classVarDecList(): ParseFunc<ClassVarDecNode[]> {
  return map(many(classVarDec()), (x) => x.flat());
}

function classVarDec(): ParseFunc<ClassVarDecNode[]> {
  const varDecs: ParseFunc<ClassVarDecNode[]> = map(
    tup3(kind(), type(), identifierList()),
    ([kind, varType, names]) =>
      names.map((name) => ({
        type: "classVarDec",
        kind,
        varType,
        name,
      }))
  );

  return left(varDecs, symbol(";"));
}

function kind(): ParseFunc<string> {
  return keywords(["static", "field"]);
}
