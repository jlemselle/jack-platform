import { Array } from "../../dist/Array.compiled";
import { Keyboard } from "../../dist/Keyboard.compiled";
import { Math } from "../../dist/Math.compiled";
import { Memory } from "../../dist/Memory.compiled";
import { Output } from "../../dist/Output.compiled";
import { Screen } from "../../dist/Screen.compiled";
import { String } from "../../dist/String.compiled";
import { Sys } from "../../dist/Sys.compiled";
import { execute } from "./runtime";
import { VirtualMachine } from "./virtual-machine";

describe("operating system", () => {
  let vm: VirtualMachine;

  beforeEach(() => {
    vm = new VirtualMachine();
  });

  it("should init", () => {
    execute(
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
      ],
      vm
    );
  });
});
