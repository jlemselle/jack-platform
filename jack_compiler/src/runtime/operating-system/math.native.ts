import { falseConstant, trueConstant } from "../constants";

export class MathNative {
  /** Returns the absolute value of x. */
  abs(x: number): number {
    // Fix function declaration
    if (x < 0) {
      return -x;
    }
    return x;
  }

  /** Returns the product of x and y.
   *  When a Jack compiler detects the multiplication operator '*' in the
   *  program's code, it handles it by invoking this method. In other words,
   *  the Jack expressions x*y and multiply(x,y) return the same value.
   */
  multiply(x: number, y: number): number {
    return x * y;
  }

  bit(x: number, b: number): number {
    return (1 << b) & x ? trueConstant : falseConstant;
  }

  /** Returns the integer part of x/y.
   *  When a Jack compiler detects the division operator '/' in the
   *  program's code, it handles it by invoking this method. In other words,
   *  the Jack expressions x/y and divide(x,y) return the same value.
   */
  divide(x: number, y: number): number {
    if (y === 0) {
      return 0;
    }

    return Math.floor(this.toSigned(x) / this.toSigned(y));
  }

  /** Returns the integer part of the square root of x. */
  sqrt(x: number): number {
    return Math.sqrt(x);
  }

  /** Returns the greater number. */
  max(a: number, b: number): number {
    if (a > b) {
      return a;
    }
    return b;
  }

  /** Returns the smaller number. */
  min(a: number, b: number): number {
    if (a < b) {
      return a;
    }
    return b;
  }

  toSigned(x: number): number {
    if (x > 32767) {
      return x - 65536;
    }
    return x;
  }
}
