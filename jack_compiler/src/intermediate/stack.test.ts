import { i16 } from "../core";
import { executeIl } from "../execution/execute-il";
import { cachedOperatingSystem } from "../execution/operating-system";

describe("stack", () => {
  it("should run stack test", () => {
    const { stack } = executeIl(
      [
        "function Main.main 0",
        "push constant 57",
        "push constant 31",
        "push constant 53",
        "add",
        "push constant 112",
        "sub",
        "neg",
        "and",
        "push constant 82",
        "or",
        "not",
        "return",
      ],
      cachedOperatingSystem()
    );

    expect(stack).toEqual([i16(-91)]);
  });
});
