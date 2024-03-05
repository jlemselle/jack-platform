import { AssemblyContext } from "./assembly-context";
import { Command } from "./command";

export class PopCommand implements Command {
  constructor(private segment: PopSegment, private index: number) {}

  assemble(context: AssemblyContext): string[] {
    switch (this.segment) {
      case "local":
        return this.popPointer("LCL", this.index);
      case "argument":
        return this.popPointer("ARG", this.index);
      case "this":
        return this.popPointer("THIS", this.index);
      case "that":
        return this.popPointer("THAT", this.index);
      case "static":
        return this.popStatic(this.index, context.fileName);
      case "temp":
        return this.popOffset(this.index, 5);
      case "pointer":
        return this.popOffset(this.index, 3);
      default:
        throw new Error(`Unknown segment ${this.segment}`);
    }
  }

  popOffset(index: number, offset: number): string[] {
    return ["@SP", "AM=M-1", "D=M", `@${index + offset}`, "M=D"];
  }

  popPointer(
    segment: "LCL" | "ARG" | "THIS" | "THAT",
    index: number
  ): string[] {
    if (index === 0) {
      return ["@SP", "AM=M-1", "D=M", `@${segment}`, "A=M", "M=D"];
    }

    return [
      `@${segment}`,
      "D=M",
      `@${index}`,
      "D=D+A",
      "@R13",
      "M=D",
      "@SP",
      "AM=M-1",
      "D=M",
      "@R13",
      "A=M",
      "M=D",
    ];
  }

  popStatic(index: number, filename: string): string[] {
    return ["@SP", "AM=M-1", "D=M", `@static.${filename}.${index}`, "M=D"];
  }
}

export function pop(segment: PopSegment, index: number): PopCommand {
  return new PopCommand(segment, index);
}

export type PopSegment =
  | "local"
  | "argument"
  | "this"
  | "that"
  | "static"
  | "temp"
  | "pointer";
