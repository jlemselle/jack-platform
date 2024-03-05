import { i16 } from "../core";
import { executeIl } from "../execution/execute-il";
import { cachedOperatingSystem } from "../execution/operating-system";

export const SP_ADDR = 0;

describe("interpret", () => {
  it("should push constant", () => {
    const { stack } = executeIl(
      ["function Main.main 0", "push constant 17", "return"],
      cachedOperatingSystem()
    );

    expect(stack).toEqual([i16(17)]);
  });

  it("should add", () => {
    const { stack } = executeIl(
      [
        "function Main.main 0",
        "push constant 17",
        "push constant 18",
        "add",
        "return",
      ],
      cachedOperatingSystem()
    );

    expect(stack).toEqual([i16(17 + 18)]);
  });

  it("should sub", () => {
    const { stack } = executeIl(
      [
        "function Main.main 0",
        "push constant 11",
        "push constant 5",
        "sub",
        "return",
      ],
      cachedOperatingSystem()
    );

    expect(stack).toEqual([i16(6)]);
  });

  it("should and", () => {
    const { stack } = executeIl(
      [
        "function Main.main 0",
        "push constant 3",
        "push constant 1",
        "and",
        "return",
      ],
      cachedOperatingSystem()
    );

    expect(stack).toEqual([i16(1)]);
  });

  it("should or", () => {
    const { stack } = executeIl(
      [
        "function Main.main 0",
        "push constant 2",
        "push constant 1",
        "or",
        "return",
      ],
      cachedOperatingSystem()
    );

    expect(stack).toEqual([i16(3)]);
  });

  it("should neg", () => {
    const { stack } = executeIl(
      ["function Main.main 0", "push constant 2", "neg", "return"],
      cachedOperatingSystem()
    );

    expect(stack).toEqual([i16(-2)]);
  });

  it("should not", () => {
    const { stack } = executeIl(
      ["function Main.main 0", "push constant 0", "not", "return"],
      cachedOperatingSystem()
    );

    expect(stack).toEqual([i16(-1)]);
  });

  it("should eq", () => {
    const { stack } = executeIl(
      [
        "function Main.main 0",
        "push constant 12",
        "push constant 12",
        "eq",
        "return",
      ],
      cachedOperatingSystem()
    );

    expect(stack).toEqual([i16(-1)]);
  });

  it("should gt", () => {
    const { stack } = executeIl(
      [
        "function Main.main 0",
        "push constant 13",
        "push constant 12",
        "gt",
        "return",
      ],
      cachedOperatingSystem()
    );

    expect(stack).toEqual([i16(-1)]);
  });

  it("should lt", () => {
    const { stack } = executeIl(
      [
        "function Main.main 0",
        "push constant 12",
        "push constant 13",
        "lt",
        "return",
      ],
      cachedOperatingSystem()
    );

    expect(stack).toEqual([i16(-1)]);
  });

  it("should nest functions", () => {
    const { stack } = executeIl(
      [
        "function Main.main 0",
        "push constant 1",
        "push constant 1",
        "call add 2",
        "return",
        "function add 0",
        "push argument 0",
        "push argument 1",
        "add",
        "return",
      ],
      cachedOperatingSystem()
    );

    expect(stack).toEqual([i16(2)]);
  });
});
