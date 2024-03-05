import { AssemblyContext } from "./assembly-context";
import { Command } from "./command";
import { PopSegment } from "./pop";

export class PushCommand implements Command {
  constructor(private segment: PushSegment, private index: number) {}

  assemble(context: AssemblyContext): string[] {
    switch (this.segment) {
      case "constant":
        return this.constant(this.index);
      case "local":
        return this.pushPointer("LCL", this.index);
      case "argument":
        return this.pushPointer("ARG", this.index);
      case "this":
        return this.pushPointer("THIS", this.index);
      case "that":
        return this.pushPointer("THAT", this.index);
      case "static":
        return this.pushStatic(this.index, context.fileName);
      case "temp":
        return this.pushOffset(this.index, 5);
      case "pointer":
        return this.pushOffset(this.index, 3);
      default:
        throw new Error(`Unknown segment ${this.segment}`);
    }
  }

  constant(index: number): string[] {
    return [`@${index}`, "D=A", "@SP", "A=M", "M=D", "@SP", "M=M+1"];
  }

  pushOffset(index: number, offset: number): string[] {
    return [`@${index + offset}`, "D=M", "@SP", "A=M", "M=D", "@SP", "M=M+1"];
  }

  pushPointer(
    segment: "LCL" | "ARG" | "THIS" | "THAT",
    index: number
  ): string[] {
    if (index === 0) {
      return [`@${segment}`, "A=M", "D=M", "@SP", "A=M", "M=D", "@SP", "M=M+1"];
    }

    return [
      `@${segment}`,
      "D=M",
      `@${index}`,
      "A=D+A",
      "D=M",
      "@SP",
      "A=M",
      "M=D",
      "@SP",
      "M=M+1",
    ];
  }

  pushStatic(index: number, filename: string): string[] {
    return [
      `@static.${filename}.${index}`,
      "D=M",
      "@SP",
      "A=M",
      "M=D",
      "@SP",
      "M=M+1",
    ];
  }
}

export function push(segment: PushSegment, index: number): PushCommand {
  return new PushCommand(segment, index);
}

export type PushSegment = "constant" | PopSegment;
