import { AssemblyContext } from "./assembly-context";
import { Command } from "./command";

export class ArithmeticCommand implements Command {
  constructor(private op: ArithmeticOp) {}

  assemble(context: AssemblyContext): string[] {
    switch (this.op) {
      case "add":
        return this.binaryOp("D+M");
      case "sub":
        return this.binaryOp("M-D");
      case "and":
        return this.binaryOp("D&M");
      case "or":
        return this.binaryOp("D|M");
      case "neg":
        return this.unaryOp("-");
      case "not":
        return this.unaryOp("!");
      case "eq":
        return this.booleanOp("JEQ", context);
      case "gt":
        return this.booleanOp("JGT", context);
      case "lt":
        return this.booleanOp("JLT", context);
    }
  }

  unaryOp(operation: "-" | "!"): string[] {
    return ["@SP", "A=M-1", "D=M", `M=${operation}D`];
  }

  binaryOp(operation: "D+M" | "M-D" | "D&M" | "D|M"): string[] {
    return ["@SP", "M=M-1", "A=M", "D=M", "A=A-1", `D=${operation}`, "M=D"];
  }

  booleanOp(
    operation: "JEQ" | "JGT" | "JLT",
    context: AssemblyContext
  ): string[] {
    if (operation === "JEQ") {
      const isZero = context.uniqueLabel("isZero");
      return [
        "@SP",
        "M=M-1",
        "A=M",
        "D=M",
        "A=A-1",
        "D=M-D",
        `@${isZero}`,
        "D;JEQ",
        "D=-1",
        `(${isZero})`,
        "@SP",
        "A=M-1",
        "M=!D",
      ];
    }

    const isTrue = context.uniqueLabel("isTrue");
    const isFalse = context.uniqueLabel("isFalse");
    return [
      "@SP",
      "M=M-1",
      "A=M",
      "D=M",
      "A=A-1",
      "D=M-D",
      `@${isTrue}`,
      `D;${operation}`,
      "D=0",
      `@${isFalse}`,
      "0;JMP",
      `(${isTrue})`,
      "D=-1",
      `(${isFalse})`,
      "@SP",
      "A=M-1",
      "M=D",
    ];
  }
}

export function add(): ArithmeticCommand {
  return new ArithmeticCommand("add");
}

export function sub(): ArithmeticCommand {
  return new ArithmeticCommand("sub");
}

export function and(): ArithmeticCommand {
  return new ArithmeticCommand("and");
}

export function or(): ArithmeticCommand {
  return new ArithmeticCommand("or");
}

export function neg(): ArithmeticCommand {
  return new ArithmeticCommand("neg");
}

export function not(): ArithmeticCommand {
  return new ArithmeticCommand("not");
}

export function eq(): ArithmeticCommand {
  return new ArithmeticCommand("eq");
}

export function gt(): ArithmeticCommand {
  return new ArithmeticCommand("gt");
}

export function lt(): ArithmeticCommand {
  return new ArithmeticCommand("lt");
}

export type ArithmeticOp =
  | "add"
  | "sub"
  | "and"
  | "or"
  | "neg"
  | "not"
  | "eq"
  | "gt"
  | "lt";
