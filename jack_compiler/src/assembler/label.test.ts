import { i16 } from "../core";
import { assemble } from "./parser";

describe("labels", () => {
  fit("should have built-in labels", () => {
    expect(resolveSymbol("@SP")).toEqual(0);
    expect(resolveSymbol("@LCL")).toEqual(1);
    expect(resolveSymbol("@ARG")).toEqual(2);
    expect(resolveSymbol("@THIS")).toEqual(3);
    expect(resolveSymbol("@THAT")).toEqual(4);
    expect(resolveSymbol("@R0")).toEqual(0);
    expect(resolveSymbol("@R1")).toEqual(1);
    expect(resolveSymbol("@R2")).toEqual(2);
    expect(resolveSymbol("@R3")).toEqual(3);
    expect(resolveSymbol("@R4")).toEqual(4);
    expect(resolveSymbol("@R5")).toEqual(5);
    expect(resolveSymbol("@R6")).toEqual(6);
    expect(resolveSymbol("@R7")).toEqual(7);
    expect(resolveSymbol("@R8")).toEqual(8);
    expect(resolveSymbol("@R9")).toEqual(9);
    expect(resolveSymbol("@R10")).toEqual(10);
    expect(resolveSymbol("@R11")).toEqual(11);
    expect(resolveSymbol("@R12")).toEqual(12);
    expect(resolveSymbol("@R13")).toEqual(13);
    expect(resolveSymbol("@R14")).toEqual(14);
    expect(resolveSymbol("@R15")).toEqual(15);
    expect(resolveSymbol("@SCREEN")).toEqual(16384);
    expect(resolveSymbol("@KBD")).toEqual(24576);
  });

  it("should support custom labels", () => {
    const { instructions } = assemble(["@MY_LABEL", "(MY_LABEL)"]);
    expect(instructions[0]).toEqual(i16(1));
  });

  it("should support multiple custom labels", () => {
    const { instructions } = assemble([
      "(LABEL_1)",
      "(LABEL_2)",
      "(LABEL_3)",
      "@MY_LABEL",
      "(MY_LABEL)",
    ]);
    expect(instructions[0]).toEqual(i16(1));
  });

  it("should support custom labels with mixed instruction types", () => {
    const { instructions } = assemble([
      "(LABEL_1)",
      "0",
      "(LABEL_2)",
      "1",
      "(LABEL_3)",
      "-1",
      "@MY_LABEL",
      "(MY_LABEL)",
    ]);
    expect(instructions[3]).toEqual(i16(4));
  });
});

function resolveSymbol(symbol: string): number {
  return assemble([symbol]).instructions[0].value;
}
