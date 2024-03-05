import { i16 } from "../core";
import { compile } from "../execution/compile";
import { execute } from "../execution/execute";
import { ExecutionResult } from "../execution/execute-il";
import { init } from "../execution/init";
import { cachedOperatingSystem } from "../execution/operating-system";

describe("compile standard library", () => {
  it("should compile memory", () => {
    const compiled = cachedOperatingSystem();
    const emptyProgram = compile(
      "Main.jack",
      `
        class Main {
          function void main() {}
        }
      `
    );
    const result = new ExecutionResult(
      execute([...init(), ...compiled, ...emptyProgram]).ram
    );
    expect(result.stack).toEqual([i16(0)]);
  });
});
