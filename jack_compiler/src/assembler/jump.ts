import { flags } from "./flags";

export function parseJump(jump?: string): number[] {
  if (!jump) {
    return [];
  }

  switch (jump) {
    case "JGT":
      return [flags.jumpIfGreaterThanZero];
    case "JEQ":
      return [flags.jumpIfEqualToZero];
    case "JGE":
      return [flags.jumpIfGreaterThanZero, flags.jumpIfEqualToZero];
    case "JLT":
      return [flags.jumpIfLessThanZero];
    case "JNE":
      return [flags.jumpIfLessThanZero, flags.jumpIfGreaterThanZero];
    case "JLE":
      return [flags.jumpIfLessThanZero, flags.jumpIfEqualToZero];
    case "JMP":
      return [
        flags.jumpIfLessThanZero,
        flags.jumpIfEqualToZero,
        flags.jumpIfGreaterThanZero,
      ];
    default:
      throw new Error(`Unknown jump '${jump}'`);
  }
}
