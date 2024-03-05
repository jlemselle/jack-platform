import { i16 } from "../core";
import { ExecutionResult, executeIl } from "../execution/execute-il";
import { cachedOperatingSystem } from "../execution/operating-system";
import { parseExpression } from "../parser/expression";
import { InputSource, many } from "../parser/parse-utils";
import { subroutine } from "../parser/subroutine";
import { tokenize } from "../tokenizer/tokenizer";
import { CompilationContext } from "./compilation-context";
import { compileExpression } from "./compile-expression";
import { compileSubroutine } from "./compile-subroutine";

describe("compile subroutine", () => {
  it("should compile subroutine", () => {
    expect(
      executeSubroutines(
        `
          function int add(int a, int b) {
            return a + b;
          }
        `,
        `add(2, 4)`
      ).stack
    ).toEqual([i16(6)]);
  });

  it("should compile vardecs", () => {
    expect(
      executeSubroutines(
        `
          function int add(int a, int b) {
            var int c;
            let c = a + b;
            return c;
          }
        `,
        `add(2, 4)`
      ).stack
    ).toEqual([i16(6)]);
  });

  it("should compile if statements", () => {
    expect(
      executeSubroutines(
        `
          function int test() {
            var int x;
            if (true) {
              let x = 7;
            } else {
              let x = 4;
            }
            return x;
          }
        `,
        `test()`
      ).stack
    ).toEqual([i16(7)]);

    expect(
      executeSubroutines(
        `
          function int test() {
            var int x;
            if (false) {
              let x = 7;
            } else {
              let x = 4;
            }
            return x;
          }
        `,
        `test()`
      ).stack
    ).toEqual([i16(4)]);
  });

  it("should compile while statements", () => {
    expect(
      executeSubroutines(
        `
          function int test() {
            var int x;
            while (x < 5) {
              let x = x + 1;
            }
            return x;
          }
        `,
        `test()`
      ).stack
    ).toEqual([i16(5)]);
  });

  it("should compile empty function", () => {
    expect(
      executeSubroutines(
        `
          function int test() {}
        `,
        `test()`
      ).stack
    ).toEqual([i16(0)]);
  });

  it("should compile do statements", () => {
    expect(
      executeSubroutines(
        `
          function int f() {}

          function int test() {
            do f();
          }
        `,
        `test()`
      ).stack
    ).toEqual([i16(0)]);
  });
});

function executeSubroutines(
  source: string,
  callSource: string
): ExecutionResult {
  const parseResult = many(subroutine())(
    new InputSource(tokenize(source, false), 0)
  );
  const parseCallResult = parseExpression(
    new InputSource(tokenize(callSource, false), 0)
  );

  if (parseResult.success && parseCallResult.success) {
    const context = new CompilationContext();
    const vm = parseResult.value.flatMap((x) => compileSubroutine(x, context));
    const code = [
      "function Main.main 0",
      ...compileExpression(parseCallResult.value, context),
      "return",
      ...vm,
    ];
    return executeIl(code, cachedOperatingSystem());
  } else {
    throw new Error("parser failed");
  }
}
