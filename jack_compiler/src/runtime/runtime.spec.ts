import { Array } from "../../dist/Array.compiled";
import { Keyboard } from "../../dist/Keyboard.compiled";
import { Math } from "../../dist/Math.compiled";
import { Memory } from "../../dist/Memory.compiled";
import { Output } from "../../dist/Output.compiled";
import { Screen } from "../../dist/Screen.compiled";
import { String } from "../../dist/String.compiled";
import { Sys } from "../../dist/Sys.compiled";
import { compileToIl } from "../execution/compile";
import { maxInt } from "./constants";
import { executeKeyCode, parse } from "./runtime";
import { VirtualMachine } from "./virtual-machine";

describe("runtime", () => {
  it("should overflow 16-bit number", () => {
    const ram = new Uint16Array(1);
    ram[0] = maxInt + 1;
    expect(ram[0]).toEqual(0);
  });

  it("should execute key", () => {
    const vm = new VirtualMachine();
    const sources = parse(
      [
        {
          fileName: "Init",
          source: [
            "push constant 255",
            "call Sys.init 0",
            "label end",
            "goto end",
          ],
        },
        Array,
        Keyboard,
        Math,
        Memory,
        Output,
        Screen,
        String,
        Sys,
        {
          fileName: "Main",
          source: compileToIl(
            `
            class Main {
              function void main() {
                return Keyboard.readChar();
              }
            }
          `
          ),
        },
      ],
      vm
    );
    executeKeyCode(98, sources, vm);
    // executeKeyCode(111, sources, vm);
    // executeKeyCode(98, sources, vm);
    // executeKeyCode(128, sources, vm);

    const str = vm.pop();
    // const length = vm.offsetGet(str, 0);
    // const dataPtr = vm.offsetGet(str, 2);
    // const data = vm.slice(dataPtr, dataPtr + length);
    expect(str).toBe(98);
    //const result = String.fromCharCode(str);
    //expect(result).toBe("b");
  });
});
