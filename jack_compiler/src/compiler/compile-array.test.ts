import { i16 } from "../core";
import { executeMain } from "../execution/execute-class";
import { cachedOperatingSystem } from "../execution/operating-system";

describe("compile array", () => {
  it("should compile array", () => {
    expect(
      executeMain(
        `
          class Main {
            function void main() {
              var Array arr;
              let arr = Array.new(5);
              let arr[2] = 17;
              let arr[3] = 5;
              return arr[2];
            }
          }
        `,
        cachedOperatingSystem()
      ).stack
    ).toEqual([i16(17)]);
  });
});
