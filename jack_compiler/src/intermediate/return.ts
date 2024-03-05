import { AssemblyContext } from "./assembly-context";
import { Command } from "./command";

export class ReturnCommand implements Command {
  assemble(context: AssemblyContext): string[] {
    context.setSubroutine("");
    return [
      ...this.popVariable("R13", 5),
      "@SP",
      "AM=M-1",
      "D=M",
      "@ARG",
      "A=M",
      "M=D",
      "D=A+1",
      "@SP",
      "M=D",
      ...this.popVariable("THIS", 1),
      ...this.popVariable("THAT", 2),
      ...this.popVariable("ARG", 3),
      ...this.popVariable("LCL", 4),
      "@R13",
      "A=M",
      "0;JMP",
    ];
  }

  popVariable(variableName: string, localOffset: number) {
    return [
      "@LCL",
      "D=M",
      `@${localOffset}`,
      "A=D-A",
      "D=M",
      `@${variableName}`,
      "M=D",
    ];
  }
}

export function $return(): ReturnCommand {
  return new ReturnCommand();
}
