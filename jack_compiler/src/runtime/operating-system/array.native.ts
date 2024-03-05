import { MemoryNative } from "./memory.native";

export class ArrayNative {
  constructor(private memory: MemoryNative) {}

  ctor(size: number): number {
    return this.memory.alloc(size);
  }

  dispose(ptr: number): number {
    return this.memory.deAlloc(ptr);
  }
}
