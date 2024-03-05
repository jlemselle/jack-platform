import { VirtualMachine } from "../virtual-machine";
import { ArrayNative } from "./array.native";
import { MemoryNative } from "./memory.native";

export class StringNative {
  constructor(
    private vm: VirtualMachine,
    private memory: MemoryNative,
    private array: ArrayNative
  ) {}

  /** constructs a new empty string with a maximum length of maxLength
   *  and initial length of 0. */
  ctor(maxLength: number): number {
    const instance = this.memory.alloc(3);
    this.vm.offsetSet(instance, 0, 0);
    this.vm.offsetSet(instance, 1, maxLength);

    if (maxLength > 0) {
      this.vm.offsetSet(instance, 2, this.array.ctor(maxLength));
    }

    return instance;
  }

  /** Disposes this string. */
  dispose(instance: number): number {
    if (this.vm.offsetGet(instance, 0) > 0) {
      this.array.dispose(this.vm.offsetGet(instance, 2));
    }
    return 0;
  }

  /** Returns the current length of this string. */
  length(instance: number): number {
    return this.vm.offsetGet(instance, 0);
  }

  /** Returns the character at the j-th location of this string. */
  charAt(instance: number, j: number): number {
    if (j >= 0 && j < this.vm.offsetGet(instance, 0)) {
      return this.vm.offsetGet(this.vm.offsetGet(instance, 2), j);
    }
    return 0;
  }

  /** Sets the character at the j-th location of this string to c. */
  setCharAt(instance: number, j: number, c: number): number {
    if (j >= 0 && j < this.vm.offsetGet(instance, 0)) {
      this.vm.offsetSet(this.vm.offsetGet(instance, 2), j, c);
    }
    return 0;
  }

  /** Appends c to this string's end and returns this string. */
  appendChar(instance: number, c: number): number {
    this.vm.offsetSet(
      this.vm.offsetGet(instance, 2),
      this.vm.offsetGet(instance, 0),
      c
    );
    this.vm.offsetSet(instance, 0, this.vm.offsetGet(instance, 0) + 1);
    return instance;
  }

  /** Erases the last character from this string. */
  eraseLastChar(instance: number): number {
    this.vm.offsetSet(instance, 0, this.vm.offsetGet(instance, 0) - 1);
    this.vm.offsetSet(
      this.vm.offsetGet(instance, 2),
      this.vm.offsetGet(instance, 0),
      0
    );
    return 0;
  }

  /** Returns the integer value of this string,
   *  until a non-digit character is detected. */
  intValue(instance: number): number {
    const data = this.vm.slice(
      this.vm.offsetGet(instance, 2),
      this.vm.offsetGet(instance, 2) + this.vm.offsetGet(instance, 0)
    );
    const str = new String(data);
    return +str;
  }

  /** Sets this string to hold a representation of the given value. */
  setInt(instance: number, val: number): number {
    const str = `${val}`;
    for (let i = 0; i < str.length; i++) {
      this.appendChar(instance, str.charCodeAt(i));
    }
    return 0;
  }

  /** Returns the new line character. */
  newLine(): number {
    return 128;
  }

  /** Returns the backspace character. */
  backSpace(): number {
    return 129;
  }

  /** Returns the double quote (") character. */
  doubleQuote(): number {
    return 34;
  }
}
