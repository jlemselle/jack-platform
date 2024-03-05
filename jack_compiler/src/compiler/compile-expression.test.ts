import { Int16, i16 } from "../core";
import { executeIl } from "../execution/execute-il";
import { cachedOperatingSystem } from "../execution/operating-system";
import { parseExpression } from "../parser/expression";
import { InputSource } from "../parser/parse-utils";
import { tokenize } from "../tokenizer/tokenizer";
import { CompilationContext } from "./compilation-context";
import { compileExpression } from "./compile-expression";

describe("compile expression", () => {
  it("should compile integer", () => {
    expect(executeExpression("12")).toEqual([i16(12)]);
  });

  it("should compile string", () => {
    expect(executeExpression('"hello"')[0].value).toBeGreaterThan(2048);
  });

  it("should compile keyword", () => {
    expect(executeExpression("true")).toEqual([i16(-1)]);
    expect(executeExpression("false")).toEqual([i16(0)]);
    expect(executeExpression("null")).toEqual([i16(0)]);
    // expect(executeTerm("this")).toEqual([i16(??)]);
  });

  it("should compile unary op", () => {
    expect(executeExpression("~0")).toEqual([i16(-1)]);
    expect(executeExpression("~1")).toEqual([i16(-2)]);
    expect(executeExpression("-1")).toEqual([i16(-1)]);
    expect(executeExpression("-17")).toEqual([i16(-17)]);
  });

  it("should compile expression", () => {
    expect(executeExpression("1 + 1")).toEqual([i16(2)]);
  });

  it("should compile nested expression", () => {
    expect(executeExpression("1 + (1 + 2)")).toEqual([i16(4)]);
  });

  it("should compile complicated expression", () => {
    expect(executeExpression("~(0 + 1) < 0 = true")).toEqual([i16(-1)]);
  });

  it("should compile another expression", () => {
    expect(executeExpression("(4 - 1) > 2")).toEqual([i16(-1)]);
  });
});

const os = cachedOperatingSystem();
function executeExpression(source: string): Int16[] {
  const parseResult = parseExpression(
    new InputSource(tokenize(source, false), 0)
  );

  if (parseResult.success) {
    const context = new CompilationContext();
    const code = compileExpression(parseResult.value, context);
    const executionResult = executeIl(
      ["function Main.main 0", ...code, "return"],
      os
    );
    return executionResult.stack;
  } else {
    fail(parseResult.error);
  }
}
