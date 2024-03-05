import { Int16, i16 } from "../core";

export const flags = {
  isMemory: 1 << 12,
  zeroData: 1 << 11,
  negateData: 1 << 10,
  zeroAccumulator: 1 << 9,
  negateAccumulator: 1 << 8,
  isAdd: 1 << 7,
  negateOutput: 1 << 6,
  writeAccumulator: 1 << 5,
  writeData: 1 << 4,
  writeMemory: 1 << 3,
  jumpIfLessThanZero: 1 << 2,
  jumpIfEqualToZero: 1 << 1,
  jumpIfGreaterThanZero: 1,
};

export function encodeFlags(flags: number[]): Int16 {
  return i16(flags.reduce((a, b) => a | b));
}
