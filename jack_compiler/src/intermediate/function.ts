import { AssemblyContext } from "./assembly-context";
import { Command } from "./command";

export class FunctionCommand implements Command {
  constructor(private name: string, private localCount: number) {}

  assemble(context: AssemblyContext): string[] {
    context.setSubroutine(this.name);
    return [
      `(${this.name})`,
      "@SP",
      ...this.repeat(["A=M", "M=0", "@SP", "M=M+1"], this.localCount),
    ];
  }

  repeat(code: string[], count: number): string[] {
    return Array(count).fill(code).flat();
  }
}

export function $function(name: string, localCount: number): FunctionCommand {
  return new FunctionCommand(name, localCount);
}
