import { ArrayNative } from "./operating-system/array.native";
import { KeyboardNative } from "./operating-system/keyboard.native";
import { MathNative } from "./operating-system/math.native";
import { MemoryNative } from "./operating-system/memory.native";
import { OutputNative } from "./operating-system/output.native";
import { StringNative } from "./operating-system/string.native";
import { VirtualMachine } from "./virtual-machine";

export type AsyncResult =
  | { completed: false }
  | { completed: true; returnValue: number };

export type ExecuteResult = { breakRequested: boolean };

export class NativeFunctionManager {
  memory: MemoryNative;
  keyboard: KeyboardNative;
  math: MathNative;
  array: ArrayNative;
  string: StringNative;
  output: OutputNative;

  constructor(private vm: VirtualMachine) {
    this.memory = new MemoryNative(vm);
    this.math = new MathNative();
    this.array = new ArrayNative(this.memory);
    this.string = new StringNative(vm, this.memory, this.array);
    this.output = new OutputNative(this.math, this.memory, this.string);
    this.keyboard = new KeyboardNative(
      vm,
      this.memory,
      this.output,
      this.string
    );
  }

  isNativeFunction(name: string) {
    switch (name) {
      case "Memory.init":
      case "Memory.peek":
      case "Memory.poke":
      case "Memory.alloc":
      case "Memory.deAlloc":
      case "Keyboard.keyPressed":
      case "Keyboard.readChar":
      case "Keyboard.readLine":
      case "Keyboard.readInt":
      case "Math.init":
      case "Math.abs":
      case "Math.multiply":
      case "Math.bit":
      case "Math.divide":
      case "Math.sqrt":
      case "Math.max":
      case "Math.min":
      case "Array.new":
      case "Array.dispose":
      case "String.new":
      case "String.dispose":
      case "String.length":
      case "String.charAt":
      case "String.setCharAt":
      case "String.appendChar":
      case "String.eraseLastChar":
      case "String.intValue":
      case "String.setInt":
      case "String.newLine":
      case "String.backSpace":
      case "String.doubleQuote":
      case "Output.init":
      case "Output.moveCursor":
      case "Output.printChar":
      case "Output.printString":
      case "Output.printInt":
      case "Output.println":
      case "Output.backSpace":
      case "Output.displayCursor":
        return true;
      default:
        return false;
    }
  }

  execute(name: string): ExecuteResult {
    switch (name) {
      case "Memory.init":
        this.noop();
        break;
      case "Memory.peek":
        this.callNative1((a) => this.memory.peek(a));
        break;
      case "Memory.poke":
        this.callNative2((a, b) => this.memory.poke(a, b));
        break;
      case "Memory.alloc":
        this.callNative1((a) => this.memory.alloc(a));
        break;
      case "Memory.deAlloc":
        this.callNative1((a) => this.memory.deAlloc(a));
        break;
      case "Keyboard.keyPressed":
        this.callNative0(() => this.keyboard.keyPressed());
        break;
      case "Keyboard.readChar":
        return this.callNativeAsync0(() => this.keyboard.readChar());
      case "Keyboard.readLine":
        return this.callNativeAsync1(() => this.keyboard.readLine(this.vm));
      case "Keyboard.readInt":
        this.callNative1((a) => this.keyboard.readInt(a));
        break;
      case "Math.init":
        this.noop();
        break;
      case "Math.abs":
        this.callNative1((a) => this.math.abs(a));
        break;
      case "Math.multiply":
        this.callNative2((a, b) => this.math.multiply(a, b));
        break;
      case "Math.bit":
        this.callNative2((a, b) => this.math.bit(a, b));
        break;
      case "Math.divide":
        this.callNative2((a, b) => this.math.divide(a, b));
        break;
      case "Math.sqrt":
        this.callNative1((a) => this.math.sqrt(a));
        break;
      case "Math.max":
        this.callNative2((a, b) => this.math.max(a, b));
        break;
      case "Math.min":
        this.callNative2((a, b) => this.math.min(a, b));
        break;
      case "Array.new":
        this.callNative1((a) => this.array.ctor(a));
        break;
      case "Array.dispose":
        this.callNative1((a) => this.array.dispose(a));
        break;
      case "String.new":
        this.callNative1((a) => this.string.ctor(a));
        break;
      case "String.dispose":
        this.callNative1((a) => this.string.dispose(a));
        break;
      case "String.length":
        this.callNative1((a) => this.string.length(a));
        break;
      case "String.charAt":
        this.callNative2((a, b) => this.string.charAt(a, b));
        break;
      case "String.setCharAt":
        this.callNative3((a, b, c) => this.string.setCharAt(a, b, c));
        break;
      case "String.appendChar":
        this.callNative2((a, b) => this.string.appendChar(a, b));
        break;
      case "String.eraseLastChar":
        this.callNative1((a) => this.string.eraseLastChar(a));
        break;
      case "String.intValue":
        this.callNative1((a) => this.string.intValue(a));
        break;
      case "String.setInt":
        this.callNative2((a, b) => this.string.setInt(a, b));
        break;
      case "String.newLine":
        this.callNative0(() => this.string.newLine());
        break;
      case "String.backSpace":
        this.callNative0(() => this.string.backSpace());
        break;
      case "String.doubleQuote":
        this.callNative0(() => this.string.doubleQuote());
        break;
      case "Output.init":
        this.noop();
        break;
      case "Output.moveCursor":
        this.callNative2((a, b) => this.output.moveCursor(a, b));
        break;
      case "Output.printChar":
        this.callNative1((a) => this.output.printChar(a));
        break;
      case "Output.printString":
        this.callNative1((a) => this.output.printString(a));
        break;
      case "Output.printInt":
        this.callNative1((a) => this.output.printInt(a));
        break;
      case "Output.println":
        this.callNative0(() => this.output.println());
        break;
      case "Output.backSpace":
        this.callNative0(() => this.output.backSpace());
        break;
      case "Output.displayCursor":
        this.callNative0(() => this.output.displayCursor());
        break;
      default:
        break;
    }

    return { breakRequested: false };
  }

  noop() {
    this.vm.push(0);
    this.vm.incrementPc();
  }

  callNative0(f: () => number) {
    this.vm.push(f());
    this.vm.incrementPc();
  }

  callNative1(f: (a: number) => number) {
    const a = this.vm.pop();
    this.vm.push(f(a));
    this.vm.incrementPc();
  }

  callNative2(f: (a: number, b: number) => number) {
    const b = this.vm.pop();
    const a = this.vm.pop();
    this.vm.push(f(a, b));
    this.vm.incrementPc();
  }

  callNative3(f: (a: number, b: number, c: number) => number) {
    const c = this.vm.pop();
    const b = this.vm.pop();
    const a = this.vm.pop();
    this.vm.push(f(a, b, c));
    this.vm.incrementPc();
  }

  callNativeAsync0(f: () => AsyncResult): ExecuteResult {
    const result = f();
    if (result.completed) {
      this.vm.push(result.returnValue);
      this.vm.incrementPc();
    }
    return { breakRequested: !result.completed };
  }

  callNativeAsync1(f: () => AsyncResult): ExecuteResult {
    const result = f();
    if (result.completed) {
      this.vm.push(result.returnValue);
      this.vm.incrementPc();
    }
    return { breakRequested: !result.completed };
  }
}
