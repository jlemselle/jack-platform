import { i16 } from "../core";
import { execute } from "../execution/execute";

describe("jumps", () => {
  it("jump", () => {
    expect(testJump("1;JGT")).toBe(true);
    expect(testJump("0;JGT")).toBe(false);
    expect(testJump("-1;JGT")).toBe(false);

    expect(testJump("1;JEQ")).toBe(false);
    expect(testJump("0;JEQ")).toBe(true);
    expect(testJump("-1;JEQ")).toBe(false);

    expect(testJump("1;JGE")).toBe(true);
    expect(testJump("0;JGE")).toBe(true);
    expect(testJump("-1;JGE")).toBe(false);

    expect(testJump("1;JLT")).toBe(false);
    expect(testJump("0;JLT")).toBe(false);
    expect(testJump("-1;JLT")).toBe(true);

    expect(testJump("1;JNE")).toBe(true);
    expect(testJump("0;JNE")).toBe(false);
    expect(testJump("-1;JNE")).toBe(true);

    expect(testJump("1;JLE")).toBe(false);
    expect(testJump("0;JLE")).toBe(true);
    expect(testJump("-1;JLE")).toBe(true);

    expect(testJump("1;JMP")).toBe(true);
    expect(testJump("0;JMP")).toBe(true);
    expect(testJump("-1;JMP")).toBe(true);
  });
});

function testJump(jumpCommand: string): boolean {
  const { pc } = execute(["@17", `${jumpCommand}`]);

  return pc.equal(i16(17));
}
