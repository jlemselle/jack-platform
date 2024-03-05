export class Int16 {
  value: number = 0;

  constructor(value: number) {
    if (value & 0x8000) {
      this.value = value | 0xffff0000;
    } else {
      this.value = value & 0xffff;
    }
  }

  toString() {
    // Convert to binary and pad to 16 bits
    return (this.value & 0xffff).toString(2).padStart(16, "0");
  }

  not(): Int16 {
    return i16(~this.value);
  }

  and(other: Int16): Int16 {
    return i16(this.value & other.value);
  }

  or(other: Int16): Int16 {
    return i16(this.value | other.value);
  }

  add(other: Int16): Int16 {
    return i16(this.value + other.value);
  }

  isNegative(): boolean {
    return this.bit(15);
  }

  bit(index: number): boolean {
    return (this.value & (1 << index)) > 0;
  }

  equal(other: Int16): boolean {
    return this.value === other.value;
  }
}

export function i16(value: number): Int16 {
  return new Int16(value);
}

export const zero = i16(0);
export const one = i16(1);
export const maxValue = 0xfffe;
