import { AssemblyContext } from "./assembly-context";
import { Command } from "./command";

export class CallCommand implements Command {
  constructor(private $function: string, private argumentCount: number) {}

  assemble(context: AssemblyContext): string[] {
    const returnAddress = context.uniqueLabel("return");

    return [
      ...this.pushVariable(returnAddress, "A"),
      ...this.pushVariable("LCL", "M"),
      ...this.pushVariable("ARG", "M"),
      ...this.pushVariable("THAT", "M"),
      ...this.pushVariable("THIS", "M"),
      "@SP",
      "D=M",
      "@LCL",
      "M=D",
      `@${this.argumentCount + 5}`,
      "D=D-A",
      "@ARG",
      "M=D",
      `@${this.$function}`,
      "0;JMP",
      `(${returnAddress})`,
    ];
  }

  pushVariable(variableName: string, variableAccessor: string) {
    return [
      `@${variableName}`,
      `D=${variableAccessor}`,
      "@SP",
      "A=M",
      "M=D",
      "@SP",
      "M=M+1",
    ];
  }
}

export function call($function: string, argumentCount: number): CallCommand {
  return new CallCommand($function, argumentCount);
}
