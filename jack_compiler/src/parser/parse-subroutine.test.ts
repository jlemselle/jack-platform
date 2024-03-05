import { expressionNode, integerNode, varNameNode } from "./expression";
import { testParser } from "./parse";
import { letStatementNode, returnStatementNode } from "./statement";
import { subroutineList } from "./subroutine";

describe("Parse subroutine", () => {
  it("should parse subroutine list", () => {
    expect(
      testParser(
        `
          constructor int MySubroutine() {
            var char c;
          }
          function boolean AnotherSubroutine(int a) {
            var MyType a, b;
          }
          method MyType FinalSubroutine(MyType x, char y) {
            var int a, b;
            var boolean c;
          }
        `,
        subroutineList()
      )
    ).toEqual([
      {
        type: "subroutine",
        kind: "constructor",
        returnType: "int",
        parameterList: [],
        subroutineName: "MySubroutine",
        varDecList: [
          {
            type: "varDec",
            varType: "char",
            name: "c",
          },
        ],
        statements: [],
      },
      {
        type: "subroutine",
        kind: "function",
        returnType: "boolean",
        parameterList: [
          {
            type: "subroutineParameter",
            parameterType: "int",
            parameterName: "a",
          },
        ],
        subroutineName: "AnotherSubroutine",
        varDecList: [
          {
            type: "varDec",
            varType: "MyType",
            name: "a",
          },
          {
            type: "varDec",
            varType: "MyType",
            name: "b",
          },
        ],
        statements: [],
      },
      {
        type: "subroutine",
        kind: "method",
        returnType: "MyType",
        parameterList: [
          {
            type: "subroutineParameter",
            parameterType: "MyType",
            parameterName: "x",
          },
          {
            type: "subroutineParameter",
            parameterType: "char",
            parameterName: "y",
          },
        ],
        subroutineName: "FinalSubroutine",
        varDecList: [
          {
            type: "varDec",
            varType: "int",
            name: "a",
          },
          {
            type: "varDec",
            varType: "int",
            name: "b",
          },
          {
            type: "varDec",
            varType: "boolean",
            name: "c",
          },
        ],
        statements: [],
      },
    ]);
  });

  it("should parse subroutine statements", () => {
    expect(
      testParser(
        `
          function boolean AnotherSubroutine(int a) {
            var MyType a, b;
            let x = 0;
            return x;
          }
        `,
        subroutineList()
      )
    ).toEqual([
      {
        type: "subroutine",
        kind: "function",
        returnType: "boolean",
        parameterList: [
          {
            type: "subroutineParameter",
            parameterType: "int",
            parameterName: "a",
          },
        ],
        subroutineName: "AnotherSubroutine",
        varDecList: [
          {
            type: "varDec",
            varType: "MyType",
            name: "a",
          },
          {
            type: "varDec",
            varType: "MyType",
            name: "b",
          },
        ],
        statements: [
          letStatementNode("x", undefined, expressionNode(integerNode(0))),
          returnStatementNode(expressionNode(varNameNode("x"))),
        ],
      },
    ]);
  });
});
