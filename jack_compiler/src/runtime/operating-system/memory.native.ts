import { VirtualMachine } from "../virtual-machine";

export class MemoryNative {
  ram: number;
  heap: number;
  listEnd: number;
  headPtr: number;

  constructor(private vm: VirtualMachine) {
    this.ram = 0;
    this.heap = 2048;
    this.headPtr = this.heap;
    this.listEnd = -1;
    this.vm.offsetSet(this.heap, 0, this.listEnd);
    this.vm.offsetSet(this.heap, 1, 14334);
  }

  peek(address: number) {
    return this.vm.offsetGet(0, address);
  }

  /** Sets the RAM value at the given address to the given value. */
  poke(address: number, value: number): number {
    this.vm.offsetSet(0, address, value);
    return value;
  }

  /** Finds an available RAM block of the given size and returns
   *  a reference to its base address. */
  alloc(size: number): number {
    let prevPtr = this.listEnd;
    let ptr = this.headPtr;
    let segmentSize = size + 2;

    while (
      ptr !== this.listEnd &&
      this.vm.offsetGet(0, ptr + 1) < segmentSize
    ) {
      prevPtr = ptr;
      ptr = this.vm.offsetGet(0, ptr);
    }

    if (ptr === this.listEnd) {
      return -1; // TODO error
    }

    let baseAddr = ptr + 2;
    let newSize = this.vm.offsetGet(0, ptr + 1) - segmentSize;
    let newNext = this.vm.offsetGet(0, ptr);

    let newPtr = ptr + segmentSize;

    if (ptr === this.headPtr) {
      this.headPtr = newPtr;
    }

    if (prevPtr !== this.listEnd) {
      this.vm.offsetSet(0, prevPtr, newPtr);
    }

    this.vm.offsetSet(0, newPtr, newNext);
    this.vm.offsetSet(0, newPtr + 1, newSize);

    return baseAddr;
  }

  /** De-allocates the given object (cast as an array) by making
   *  it available for future allocations. */
  deAlloc(baseAddr: number): number {
    // Find the position to insert the deallocated block in the free list
    let prevPtr = this.listEnd;
    let ptr = this.headPtr;
    while (ptr !== this.listEnd && ptr < baseAddr) {
      prevPtr = ptr;
      ptr = this.vm.offsetGet(0, ptr);
    }

    // Insert the deallocated block into the free list
    let currentPtr = baseAddr - 2;
    let size = this.vm.offsetGet(0, currentPtr + 1);

    if (prevPtr === this.listEnd) {
      this.headPtr = currentPtr;
    } else {
      this.vm.offsetSet(0, prevPtr, currentPtr);
    }

    this.vm.offsetSet(0, currentPtr, ptr);

    // Merge adjacent free blocks
    let nextPtr = currentPtr + size;
    if (ptr !== this.listEnd && nextPtr === ptr) {
      size = size + this.vm.offsetGet(0, ptr + 1);
      this.vm.offsetSet(0, currentPtr, this.vm.offsetGet(0, ptr));
    }

    // Update the size of the deallocated block
    this.vm.offsetSet(0, currentPtr + 1, size);

    return 0;
  }
}
