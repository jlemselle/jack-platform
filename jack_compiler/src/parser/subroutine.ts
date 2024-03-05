import { Node, identifierList, type } from "./common";
import {
  ParseFunc,
  between,
  identifier,
  keyword,
  keywords,
  many,
  map,
  or,
  separated,
  symbol,
  tup,
  tup5,
} from "./parse-utils";
import { StatementNode, parseStatement } from "./statement";

export interface SubroutineParameterNode extends Node {
  type: "subroutineParameter";
  parameterType: string;
  parameterName: string;
}

export interface SubroutineNode extends Node {
  type: "subroutine";
  kind: string;
  returnType: string;
  subroutineName: string;
  parameterList: SubroutineParameterNode[];
  varDecList: VarDecNode[];
  statements: StatementNode[];
}

export interface VarDecNode extends Node {
  type: "varDec";
  varType: string;
  name: string;
}

export function subroutineList(): ParseFunc<SubroutineNode[]> {
  return many(subroutine());
}

export function subroutine(): ParseFunc<SubroutineNode> {
  return map(
    tup5(
      kind(),
      returnType(),
      identifier(),
      between(symbol("("), parameterList(), symbol(")")),
      between(symbol("{"), tup(varDecList(), many(parseStatement)), symbol("}"))
    ),
    ([
      kind,
      returnType,
      subroutineName,
      parameterList,

      [varDecList, statements],
    ]): SubroutineNode => ({
      type: "subroutine",
      kind,
      returnType,
      subroutineName,
      parameterList,
      varDecList,
      statements,
    })
  );
}

function kind(): ParseFunc<string> {
  return keywords(["constructor", "function", "method"]);
}

function returnType(): ParseFunc<string> {
  return or(type(), keyword("void"));
}

function parameter(): ParseFunc<SubroutineParameterNode> {
  return map(tup(type(), identifier()), ([parameterType, parameterName]) => ({
    type: "subroutineParameter",
    parameterType,
    parameterName,
  }));
}

function parameterList(): ParseFunc<SubroutineParameterNode[]> {
  return separated(parameter(), symbol(","));
}

function varDec(): ParseFunc<VarDecNode[]> {
  const varDec: ParseFunc<VarDecNode[]> = map(
    tup(type(), identifierList()),
    ([varType, names]) =>
      names.map((name) => ({
        type: "varDec",
        varType: varType,
        name: name,
      }))
  );

  return between(keyword("var"), varDec, symbol(";"));
}

function varDecList(): ParseFunc<VarDecNode[]> {
  return map(many(varDec()), (varDecs) => varDecs.flat());
}
