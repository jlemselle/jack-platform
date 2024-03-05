import {
  expressionNode,
  integerNode,
  keywordNode,
  opNode,
  parseExpression,
  stringNode,
  unaryOpNode,
  varNameExpressionNode,
  varNameNode,
} from "./expression";
import { subroutineCallNode } from "./expression/subroutineCall";
import { testParser } from "./parse";

describe("Parse term", () => {
  it("should parse term", () => {
    expect(testParser(`12`, parseExpression)).toEqual(
      expressionNode(integerNode(12))
    );

    expect(testParser(`"bob"`, parseExpression)).toEqual(
      expressionNode(stringNode("bob"))
    );

    expect(testParser(`null`, parseExpression)).toEqual(
      expressionNode(keywordNode("null"))
    );

    expect(testParser(`~1`, parseExpression)).toEqual(
      expressionNode(unaryOpNode("~", integerNode(1)))
    );

    expect(testParser(`1 + 1`, parseExpression)).toEqual(
      expressionNode(integerNode(1), [[opNode("+"), integerNode(1)]])
    );

    expect(testParser(`2 * (1 + 3)`, parseExpression)).toEqual(
      expressionNode(integerNode(2), [
        [
          opNode("*"),
          expressionNode(integerNode(1), [[opNode("+"), integerNode(3)]]),
        ],
      ])
    );

    expect(testParser(`myVar`, parseExpression)).toEqual(
      expressionNode(varNameNode("myVar"))
    );

    expect(testParser(`myVar[x]`, parseExpression)).toEqual(
      expressionNode(
        varNameExpressionNode("myVar", expressionNode(varNameNode("x")))
      )
    );

    expect(testParser(`myVar[x + 1]`, parseExpression)).toEqual(
      expressionNode(
        varNameExpressionNode(
          "myVar",
          expressionNode(varNameNode("x"), [[opNode("+"), integerNode(1)]])
        )
      )
    );

    expect(testParser(`print("Hello")`, parseExpression)).toEqual(
      expressionNode(
        subroutineCallNode(undefined, "print", [
          expressionNode(stringNode("Hello")),
        ])
      )
    );

    expect(testParser(`add(1, 2)`, parseExpression)).toEqual(
      expressionNode(
        subroutineCallNode(undefined, "add", [
          expressionNode(integerNode(1)),
          expressionNode(integerNode(2)),
        ])
      )
    );
  });
});
