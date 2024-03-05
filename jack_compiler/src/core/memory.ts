import { Int16, zero } from "./i16";

export class Memory {
  memory: Int16[];

  constructor(memory: Int16[]) {
    this.memory = memory;
  }

  static empty(size: number): Memory {
    return new Memory(new Array(size).fill(zero));
  }

  static fromArray(code: Int16[]): Memory {
    return new Memory(code);
  }

  withinRange(location: Int16): boolean {
    const loc = location.value & 0xffff;
    return loc >= 0 && loc < this.memory.length;
  }

  read(location: Int16): Int16 {
    return this.memory[location.value & 0xffff];
  }

  write(location: Int16, value: Int16) {
    this.memory[location.value & 0xffff] = value;
  }
}
