import { flags } from "./flags";

export function parseCompute(compute: string): number[] {
  switch (compute) {
    case "0":
      return [flags.zeroData, flags.zeroAccumulator];
    case "1":
      return [
        flags.zeroData,
        flags.negateData,
        flags.zeroAccumulator,
        flags.negateAccumulator,
        flags.isAdd,
        flags.negateOutput,
      ];
    case "-1":
      return [
        flags.zeroData,
        flags.negateData,
        flags.zeroAccumulator,
        flags.isAdd,
      ];
    case "D":
      return [flags.zeroAccumulator, flags.negateAccumulator];
    case "A":
      return [flags.zeroData, flags.negateData];
    case "M":
      return [flags.isMemory, flags.zeroData, flags.negateData];
    case "!D":
      return [flags.zeroAccumulator, flags.negateAccumulator, flags.negateData];
    case "!A":
      return [flags.zeroData, flags.negateData, flags.negateAccumulator];
    case "!M":
      return [
        flags.isMemory,
        flags.zeroData,
        flags.negateData,
        flags.negateAccumulator,
      ];
    case "-D":
      return [
        flags.zeroAccumulator,
        flags.negateAccumulator,
        flags.isAdd,
        flags.negateOutput,
      ];
    case "-A":
      return [
        flags.zeroData,
        flags.negateData,
        flags.isAdd,
        flags.negateOutput,
      ];
    case "-M":
      return [
        flags.isMemory,
        flags.zeroData,
        flags.negateData,
        flags.isAdd,
        flags.negateOutput,
      ];
    case "D+1":
      return [
        flags.zeroAccumulator,
        flags.negateAccumulator,
        flags.negateData,
        flags.isAdd,
        flags.negateOutput,
      ];
    case "A+1":
      return [
        flags.zeroData,
        flags.negateAccumulator,
        flags.negateData,
        flags.isAdd,
        flags.negateOutput,
      ];
    case "M+1":
      return [
        flags.isMemory,
        flags.zeroData,
        flags.negateAccumulator,
        flags.negateData,
        flags.isAdd,
        flags.negateOutput,
      ];
    case "D-1":
      return [flags.zeroAccumulator, flags.negateAccumulator, flags.isAdd];
    case "A-1":
      return [flags.zeroData, flags.negateData, flags.isAdd];
    case "M-1":
      return [flags.isMemory, flags.zeroData, flags.negateData, flags.isAdd];
    case "D+A":
      return [flags.isAdd];
    case "D+M":
      return [flags.isMemory, flags.isAdd];
    case "D-A":
      return [flags.negateData, flags.isAdd, flags.negateOutput];
    case "D-M":
      return [
        flags.isMemory,
        flags.negateData,
        flags.isAdd,
        flags.negateOutput,
      ];
    case "A-D":
      return [flags.negateAccumulator, flags.isAdd, flags.negateOutput];
    case "M-D":
      return [
        flags.isMemory,
        flags.negateAccumulator,
        flags.isAdd,
        flags.negateOutput,
      ];
    case "D&A":
      return [];
    case "D&M":
      return [flags.isMemory];
    case "D|A":
      return [flags.negateAccumulator, flags.negateData, flags.negateOutput];
    case "D|M":
      return [
        flags.isMemory,
        flags.negateAccumulator,
        flags.negateData,
        flags.negateOutput,
      ];
    default:
      throw new Error(`Unknown computation '${compute}'`);
  }
}
