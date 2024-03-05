import { i16 } from "../core";
import { execute } from "../execution/execute";

describe("program", () => {
  it("should compute M[2] = M[0] + M[1]", () => {
    const { ram } = execute(
      [
        "// Compute RAM[2] = RAM[0] + RAM[1]",
        "@0",
        "D=M",
        "@1",
        "A=M",
        "D=D+A",
        "@2",
        "M=D",
      ],
      {
        ram: [
          { loc: 0, value: 13 },
          { loc: 1, value: 2 },
        ],
      }
    );
    expect(ram[2]).toEqual(i16(15));
  });
});
