import { AssemblyContext } from "./assembly-context";
import { Command } from "./command";

export class IfGotoCommand implements Command {
  constructor(private label: string) {}

  assemble(context: AssemblyContext): string[] {
    return ["@SP", "AM=M-1", "D=M", `@${this.label}`, "D;JNE"];
  }
}

export function ifGoto(label: string): IfGotoCommand {
  return new IfGotoCommand(label);
}
