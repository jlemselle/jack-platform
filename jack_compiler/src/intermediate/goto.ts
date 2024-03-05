import { AssemblyContext } from "./assembly-context";
import { Command } from "./command";

export class GotoCommand implements Command {
  constructor(private label: string) {}

  assemble(context: AssemblyContext): string[] {
    return [`@${this.label}`, "0;JMP"];
  }
}

export function goto(label: string): GotoCommand {
  return new GotoCommand(label);
}
