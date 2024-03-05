import {
  expressionNode,
  integerNode,
  stringNode,
  varNameNode,
} from "./expression";
import { subroutineCallNode } from "./expression/subroutineCall";
import { testParser } from "./parse";
import {
  doStatementNode,
  ifStatementNode,
  letStatementNode,
  parseStatement,
  returnStatementNode,
  whileStatementNode,
} from "./statement";

describe("Parse statement", () => {
  it("should parse statement", () => {
    expect(testParser(`let x = 12;`, parseStatement)).toEqual(
      letStatementNode("x", undefined, expressionNode(integerNode(12)))
    );

    expect(testParser(`let x[0] = 12;`, parseStatement)).toEqual(
      letStatementNode(
        "x",
        expressionNode(integerNode(0)),
        expressionNode(integerNode(12))
      )
    );

    expect(testParser(`if (condition) {}`, parseStatement)).toEqual(
      ifStatementNode(expressionNode(varNameNode("condition")), [])
    );

    expect(
      testParser(
        `
          if (condition) {
            let x = 12;
          }
        `,
        parseStatement
      )
    ).toEqual(
      ifStatementNode(expressionNode(varNameNode("condition")), [
        letStatementNode("x", undefined, expressionNode(integerNode(12))),
      ])
    );

    expect(
      testParser(
        `
          if (condition) {
            let x = 12;
          } else {
            let x = 13;
          }
        `,
        parseStatement
      )
    ).toEqual(
      ifStatementNode(
        expressionNode(varNameNode("condition")),
        [letStatementNode("x", undefined, expressionNode(integerNode(12)))],
        [letStatementNode("x", undefined, expressionNode(integerNode(13)))]
      )
    );

    expect(testParser(`while (expr) {}`, parseStatement)).toEqual(
      whileStatementNode(expressionNode(varNameNode("expr")), [])
    );

    expect(testParser(`while (expr) { let x = 1; }`, parseStatement)).toEqual(
      whileStatementNode(expressionNode(varNameNode("expr")), [
        letStatementNode("x", undefined, expressionNode(integerNode(1))),
      ])
    );

    expect(testParser(`do print("hello");`, parseStatement)).toEqual(
      doStatementNode(
        subroutineCallNode(undefined, "print", [
          expressionNode(stringNode("hello")),
        ])
      )
    );

    expect(testParser(`return x;`, parseStatement)).toEqual(
      returnStatementNode(expressionNode(varNameNode("x")))
    );
  });
});
