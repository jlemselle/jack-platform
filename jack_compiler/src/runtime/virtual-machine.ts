import { constants, maxInt, stackStart } from "./constants";
import { NativeFunctionManager } from "./native";

export class VirtualMachine {
  private fileName?: string;
  private nextRam = 16;
  private statics: { [key: string]: number } = {};
  private labels: { [key: string]: number } = {};
  private functions: { [key: string]: number } = {};
  private ram: Uint16Array;
  private native: NativeFunctionManager;

  constructor() {
    this.ram = new Uint16Array(maxInt);

    this.ram[constants.SP] = stackStart;
    this.native = new NativeFunctionManager(this);
  }

  pc: number = 0;

  callStack: any[] = [];
  argCount: number = 0;
  localCount: number = 0;

  get stackPointer(): number {
    return this.ram[constants.SP];
  }

  get stack(): number[] {
    return Array.from(this.ram.slice(stackStart, this.stackPointer));
  }

  push(value: number) {
    this.ram[this.stackPointer] = value;
    this.ram[constants.SP]++;
    if (this.ram[constants.SP] > 8012) {
      throw new Error("Stack overflow");
    }
  }

  pop(): number {
    this.ram[constants.SP]--;
    if (this.ram[constants.SP] < 256) {
      throw new Error("Stack underflow");
    }
    return this.ram[this.stackPointer];
  }

  incrementPc() {
    this.pc++;
  }

  // Local, Argument, This and That Segments

  initPointer(segment: number, location: number) {
    this.ram[segment] = location;
  }

  pointerSet(segment: number, index: number, value: number) {
    this.ram[this.ram[segment] + index] = value;
  }

  pointerGet(segment: number, index: number) {
    return this.ram[this.ram[segment] + index];
  }

  // Static Segment

  setFileName(fileName: string) {
    this.fileName = fileName;
  }

  getStaticAddress(name: string): number {
    if (this.statics[name] === undefined) {
      this.statics[name] = this.nextRam++;
    }
    return this.statics[name];
  }

  staticSet(index: number, value: number) {
    if (this.fileName === undefined) {
      throw new Error("File name required to use static segment");
    }
    this.ram[this.getStaticAddress(`static.${this.fileName}.${index}`)] = value;
  }

  staticGet(index: number): number {
    if (this.fileName === undefined) {
      throw new Error("File name required to use static segment");
    }
    return this.ram[this.getStaticAddress(`static.${this.fileName}.${index}`)];
  }

  // Temp and Pointer Segments

  offsetSet(segment: number, index: number, value: number) {
    this.ram[segment + index] = value;
  }

  offsetGet(segment: number, index: number): number {
    return this.ram[segment + index];
  }

  // Control Flow

  addLabel(name: string, value: number) {
    if (this.labels[name] !== undefined) {
      throw new Error(`Label already defined: ${name}`);
    }
    this.labels[name] = value;
  }

  getLabel(name: string): number {
    const address = this.labels[name];
    if (address === undefined) {
      throw new Error(`Label not found: ${name}`);
    }
    return address;
  }

  goto(label: string) {
    const value = this.getLabel(label);
    if (value === this.pc) {
      console.log(`Infinite loop detected at ${value}`);
      this.pc = maxInt;
    } else {
      this.pc = value;
    }
  }

  ifGoto(label: string) {
    const value = this.pop();
    if (value !== 0) {
      this.pc = this.getLabel(label);
    } else {
      this.incrementPc();
    }
  }

  // Functions

  addFunction(name: string, value: number) {
    if (this.functions[name] !== undefined) {
      throw new Error(`Function already defined: ${name}`);
    }
    this.functions[name] = value;
  }

  getFunction(name: string): number {
    const address = this.functions[name];
    if (address === undefined) {
      throw new Error(`Function not found: ${name}`);
    }
    return address;
  }

  call(name: string, args: number): { breakRequested: boolean } {
    if (this.native.isNativeFunction(name)) {
      return this.native.execute(name);
    }

    const argStart = this.stackPointer - args;
    this.push(this.pc + 1);
    this.push(this.ram[constants.LCL]);
    this.push(this.ram[constants.ARG]);
    this.push(this.ram[constants.THAT]);
    this.push(this.ram[constants.THIS]);
    this.ram[constants.LCL] = this.stackPointer;
    this.ram[constants.ARG] = argStart;
    this.pc = this.getFunction(name);

    return { breakRequested: false };
  }

  function(name: string, locals: number) {
    this.argCount = locals;
    this.callStack.push({ name, args: this.argCount, locals });
    for (let i = 0; i < locals; i++) {
      this.push(0);
    }
  }

  return() {
    this.callStack.pop();
    if (this.callStack.length === 0) {
      this.localCount = 0;
      this.argCount = 0;
      return;
    } else {
      this.localCount = this.callStack[this.callStack.length - 1].locals;
      this.argCount = this.callStack[this.callStack.length - 1].args;
    }
    const returnValue = this.ram[this.stackPointer - 1];
    const returnAddress = this.ram[this.ram[constants.LCL] - 5];
    const returnStack = this.ram[constants.ARG];
    this.ram[constants.THIS] = this.ram[this.ram[constants.LCL] - 1];
    this.ram[constants.THAT] = this.ram[this.ram[constants.LCL] - 2];
    this.ram[constants.ARG] = this.ram[this.ram[constants.LCL] - 3];
    this.ram[constants.LCL] = this.ram[this.ram[constants.LCL] - 4];
    this.ram[constants.SP] = returnStack;
    this.push(returnValue);
    this.pc = returnAddress;
  }

  // Screen

  getScreen(): Uint16Array {
    return this.ram.slice(constants.SCREEN, constants.SCREEN + 256 * 32);
  }

  pixel(x: number, y: number): boolean {
    const address = constants.SCREEN + y * 32 + Math.floor(x / 16);
    const value = this.ram[address];
    const index = x % 16;
    return ((1 << index) & value) > 0;
  }

  // Keyboard

  setKey(value: number) {
    this.ram[constants.KBD] = value;
  }

  getKey(): number {
    return this.ram[constants.KBD];
  }

  // function to get x locals from the stack
  getLocals(x: number): number[] {
    return this.stack.slice(
      this.ram[this.ram[constants.LCL]],
      this.ram[this.ram[constants.LCL]] + x
    );
  }

  getArguments(x: number): number[] {
    return this.stack.slice(
      this.ram[this.ram[constants.LCL]],
      this.ram[this.ram[constants.LCL]] + x
    );
  }

  // function to get a list of { index: number, value: number } populated from any records in ram that aren't zero
  getRam(): { index: number; value: number }[] {
    const ram: { index: number; value: number }[] = [];
    for (let i = 0; i < this.ram.length; i++) {
      if (this.ram[i] !== 0) {
        ram.push({ index: i, value: this.ram[i] });
      }
    }
    return ram;
  }

  // function getLocals returns an array of locals from ram[LCL] to ram[LCL] + localCount
  getLocalsFromRam(): Uint16Array {
    return this.ram.slice(
      this.ram[this.ram[constants.LCL]],
      this.ram[this.ram[constants.LCL]] + this.localCount
    );
  }

  getArgsFromRam(): Uint16Array {
    return this.ram.slice(
      this.ram[this.ram[constants.ARG]],
      this.ram[this.ram[constants.ARG]] + this.argCount
    );
  }

  slice(start: number, end: number): Uint16Array {
    return this.ram.slice(start, end);
  }
}
