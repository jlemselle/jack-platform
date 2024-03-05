import { calculate } from "../execution/execute";

describe("computations", () => {
  it("should load immediate", () => {
    expect(calculate("@17")).toEqual(17);
  });

  it("should compute", () => {
    expect(calculate("0")).toEqual(0);
    expect(calculate("1")).toEqual(1);
    expect(calculate("-1")).toEqual(-1);

    expect(calculate("D", { d: 17 })).toEqual(17);
    expect(calculate("A", { a: 17 })).toEqual(17);
    expect(calculate("M", { a: 0, ram: [{ loc: 0, value: 17 }] })).toEqual(17);

    expect(calculate("!D", { d: -1 })).toEqual(0);
    expect(calculate("!A", { a: -1 })).toEqual(0);
    expect(calculate("!M", { a: 0, ram: [{ loc: 0, value: -1 }] })).toEqual(0);

    expect(calculate("-D", { d: 13 })).toEqual(-13);
    expect(calculate("-A", { a: 13 })).toEqual(-13);
    expect(calculate("-M", { a: 0, ram: [{ loc: 0, value: 13 }] })).toEqual(
      -13
    );

    expect(calculate("D+1", { d: 11 })).toEqual(12);
    expect(calculate("A+1", { a: 11 })).toEqual(12);
    expect(calculate("M+1", { a: 0, ram: [{ loc: 0, value: 11 }] })).toEqual(
      12
    );

    expect(calculate("D-1", { d: 11 })).toEqual(10);
    expect(calculate("A-1", { a: 11 })).toEqual(10);
    expect(calculate("M-1", { a: 0, ram: [{ loc: 0, value: 11 }] })).toEqual(
      10
    );

    expect(calculate("D+A", { d: 3, a: 2 })).toEqual(5);
    expect(
      calculate("D+M", { d: 3, a: 0, ram: [{ loc: 0, value: 2 }] })
    ).toEqual(5);

    expect(calculate("D-A", { d: 14, a: 3 })).toEqual(11);
    expect(
      calculate("D-M", { d: 14, a: 0, ram: [{ loc: 0, value: 3 }] })
    ).toEqual(11);
    expect(calculate("A-D", { a: 14, d: 3 })).toEqual(11);
    expect(
      calculate("M-D", { a: 0, ram: [{ loc: 0, value: 14 }], d: 3 })
    ).toEqual(11);

    // 1 & 3 = 1
    expect(calculate("D&A", { d: 1, a: 3 })).toEqual(1);
    expect(
      calculate("D&M", { d: 1, a: 0, ram: [{ loc: 0, value: 3 }] })
    ).toEqual(1);
    // 1 | 2 = 3
    expect(calculate("D|A", { d: 1, a: 2 })).toEqual(3);
    expect(
      calculate("D|M", { d: 1, a: 0, ram: [{ loc: 0, value: 2 }] })
    ).toEqual(3);
  });
});
