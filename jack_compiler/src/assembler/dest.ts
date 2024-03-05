import { flags } from "./flags";

export function parseDest(dest?: string): number[] {
  if (!dest) {
    return [];
  }

  return Array.from(dest).map((x) => parseFlag(x));
}

function parseFlag(char: string): number {
  switch (char) {
    case "A":
      return flags.writeAccumulator;
    case "D":
      return flags.writeData;
    case "M":
      return flags.writeMemory;
    default:
      throw new Error(`Unrecognised destination '${char}'`);
  }
}
