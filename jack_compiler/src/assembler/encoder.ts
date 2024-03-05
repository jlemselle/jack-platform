import { Int16, i16, maxValue } from "../core";
import { encodeFlags } from "./flags";

export function encodeLoad(value: number): Int16 {
  if (value < 0) {
    throw `Cannot load value larger than ${maxValue}`;
  }
  if (value > maxValue) {
    throw `Cannot load value larger than ${maxValue}`;
  }
  return i16(value);
}

export function encodeCompute(
  compute: number[],
  dest: number[],
  jump: number[]
): Int16 {
  return encodeFlags([0b1110000000000000, ...compute, ...dest, ...jump]);
}
