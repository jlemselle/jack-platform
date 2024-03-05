import { executeMain } from "../execution/execute-class";
import { cachedOperatingSystem } from "../execution/operating-system";

describe("compile class", () => {
  it("should allocate memory", () => {
    expect(
      executeMain(
        `
          class Main {
            function void main() {
              do Memory.alloc(5);
              return Memory.alloc(5);
            }
          }
        `,
        cachedOperatingSystem()
      ).stack[0].value
    ).toBeGreaterThan(2053);
  });
});
