import { i16 } from "../core";
import { executeClass } from "../execution/execute-class";
import { cachedOperatingSystem } from "../execution/operating-system";

describe("compile class", () => {
  it("should compile class", () => {
    expect(
      executeClass(
        `
          class MyClass {
            function void f() {}
          }
        `,
        `
          class Main {
            function void main() {
              do MyClass.f();
            }
          }
        `,
        cachedOperatingSystem()
      ).stack
    ).toEqual([i16(0)]);
  });

  it("should be able to access fields in subroutines", () => {
    expect(
      executeClass(
        `
          class MyClass {
            field int x;

            constructor MyClass new() {
              return this;
            }

            method int f() {
              let x = 16;
              return x;
            }
          }
        `,
        `
          class Main {
            function void main() {
              var MyClass myClass;
              let myClass = MyClass.new();
              return myClass.f();
            }
          }
        `,
        cachedOperatingSystem()
      ).stack
    ).toEqual([i16(16)]);
  });

  it("should be able to access statics in subroutines", () => {
    const result = executeClass(
      `
        class MyClass {
          static int x;

          constructor MyClass new() {
            return this;
          }

          method int f() {
            let x = 16;
            return x;
          }
        }
      `,
      `
        class Main {
          function void main() {
            var MyClass myClass;
            let myClass = MyClass.new();
            return myClass.f();
          }
        }
      `,
      cachedOperatingSystem()
    );
    expect(result.stack).toEqual([i16(16)]);
  });

  it("should have separate fields for separate instances", () => {
    const result = executeClass(
      `
        class MyClass {
          field int x;

          constructor MyClass new(int ax) {
            let x = ax;
            return this;
          }

          method int getX() {
            return x;
          }
        }
      `,
      `
        class Main {
          function void main() {
            var MyClass one, two;
            let one = MyClass.new(1);
            let two = MyClass.new(2);
            return one.getX();
          }
        }
      `,
      cachedOperatingSystem()
    );
    expect(result.stack).toEqual([i16(1)]);
  });
});
