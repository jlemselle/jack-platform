import { AsyncResult } from "../native";
import { VirtualMachine } from "../virtual-machine";
import { MemoryNative } from "./memory.native";
import { OutputNative } from "./output.native";
import { StringNative } from "./string.native";
export class KeyboardNative {
  lastChar: number = 0;
  readLineStr: number | null = null;

  constructor(
    private vm: VirtualMachine,
    private memory: MemoryNative,
    private output: OutputNative,
    private string: StringNative
  ) {}

  keyPressed(): number {
    return this.memory.peek(24576);
  }

  /**
   * Waits until a key is pressed on the keyboard and released,
   * then echoes the key to the screen, and returns the character
   * of the pressed key.
   */
  readChar(): AsyncResult {
    this.output.displayCursor();
    if (this.lastChar !== this.vm.offsetGet(0, 24576)) {
      this.lastChar = this.vm.offsetGet(0, 24576);
      if (this.lastChar !== 0) {
        this.output.printChar(this.lastChar);
        return { completed: true, returnValue: this.lastChar };
      }
    }
    return { completed: false };
  }

  /**
   * Displays the message on the screen, reads from the keyboard the entered
   * text until a newline character is detected, echoes the text to the screen,
   * and returns its value. Also handles user backspaces.
   */
  readLine(vm: VirtualMachine): AsyncResult {
    if (this.readLineStr === null) {
      // initialize
      this.output.printString(this.vm.pop());
      this.readLineStr = this.string.ctor(200);
    }

    const result = this.readChar();

    if (result.completed) {
      if (result.returnValue === this.string.newLine()) {
        const str = this.readLineStr;
        this.readLineStr = null;
        return { completed: true, returnValue: str };
      } else {
        if (result.returnValue === this.string.backSpace()) {
          if (this.string.length(this.readLineStr) > 0) {
            this.output.backSpace();
            this.string.eraseLastChar(this.readLineStr);
          }
        } else {
          this.string.appendChar(this.readLineStr, result.returnValue);
        }
      }
    }

    return { completed: false };
  }

  /**
   * Displays the message on the screen, reads from the keyboard the entered
   * text until a newline character is detected, echoes the text to the screen,
   * and returns its integer value (until the first non-digit character in the
   * entered text is detected). Also handles user backspaces.
   */
  readInt(message: number): number {
    return 0;
  }
}
