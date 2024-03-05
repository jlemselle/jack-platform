import { i16 } from "../core";
import { execute } from "../execution/execute";

describe("destinations", () => {
  it("should write output to dest", () => {
    expect(execute(["D=-1"]).d).toEqual(i16(-1));

    expect(execute(["A=-1"]).a).toEqual(i16(-1));

    expect(execute(["M=-1"]).ram[0]).toEqual(i16(-1));

    expect(execute(["@17", "M=-1"]).ram[17]).toEqual(i16(-1));
  });
});
