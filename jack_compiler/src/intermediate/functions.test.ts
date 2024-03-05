import { i16 } from "../core";
import { executeIl } from "../execution/execute-il";
import { cachedOperatingSystem } from "../execution/operating-system";

export const SP_ADDR = 0;

describe("interpret", () => {
  it("should goto", () => {
    const { stack } = executeIl(
      [
        "function Main.main 0",
        "goto a",
        "push constant 15",
        "label a",
        "push constant 16",
        "return",
      ],
      cachedOperatingSystem()
    );

    expect(stack).toEqual([i16(16)]);
  });

  it("should if-goto", () => {
    const { stack } = executeIl(
      [
        "function Main.main 0",
        "push constant 0",
        "if-goto a // should not jump",
        "push constant 16",
        "label a",
        "push constant 1",
        "if-goto b // should jump",
        "push constant 17",
        "label b",
        "return",
      ],
      cachedOperatingSystem()
    );

    expect(stack).toEqual([i16(16)]);
  });

  it("should function", () => {
    const { stack } = executeIl(
      [
        "function add 0",
        "push argument 0",
        "push argument 1",
        "add",
        "return",
        "function Main.main 0",
        "push constant 10",
        "push constant 5",
        "call add 2",
        "return",
      ],
      cachedOperatingSystem()
    );

    expect(stack).toEqual([i16(15)]);
  });

  it("should function with locals", () => {
    const { stack } = executeIl(
      [
        "function add 1",
        "push argument 0",
        "push argument 1",
        "add",
        "push local 0",
        "pop local 0",
        "return",
        "function Main.main 0",
        "push constant 10",
        "push constant 5",
        "call add 2",
        "return",
      ],
      cachedOperatingSystem()
    );

    expect(stack).toEqual([i16(15)]);
  });
});
