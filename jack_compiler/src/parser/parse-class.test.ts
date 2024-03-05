import { parseClass } from "./class";
import { testParser } from "./parse";

describe("Parse class", () => {
  it("should parse empty class", () => {
    expect(testParser(`class MyClass {}`, parseClass())).toEqual({
      type: "class",
      name: "MyClass",
      varDecs: [],
      subroutines: [],
    });
  });

  it("should parse class var dec", () => {
    expect(
      testParser(
        `
        class MyClass {
          static int a, b;
          field char c;
          field boolean d;
          field MyType x;
        }
      `,
        parseClass()
      )
    ).toEqual({
      type: "class",
      name: "MyClass",
      varDecs: [
        {
          type: "classVarDec",
          kind: "static",
          varType: "int",
          name: "a",
        },
        {
          type: "classVarDec",
          kind: "static",
          varType: "int",
          name: "b",
        },
        {
          type: "classVarDec",
          kind: "field",
          varType: "char",
          name: "c",
        },
        {
          type: "classVarDec",
          kind: "field",
          varType: "boolean",
          name: "d",
        },
        {
          type: "classVarDec",
          kind: "field",
          varType: "MyType",
          name: "x",
        },
      ],
      subroutines: [],
    });
  });
});
