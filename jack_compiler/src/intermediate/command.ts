import { AssemblyContext } from "./assembly-context";

export interface Command {
  assemble(context: AssemblyContext): string[];
}
