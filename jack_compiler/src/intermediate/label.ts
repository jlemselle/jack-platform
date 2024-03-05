import { AssemblyContext } from "./assembly-context";
import { Command } from "./command";

export class LabelCommand implements Command {
  constructor(private name: string) {}

  assemble(context: AssemblyContext): string[] {
    return [`(${this.name})`];
  }
}

export function label(name: string): LabelCommand {
  return new LabelCommand(name);
}
