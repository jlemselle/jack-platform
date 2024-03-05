import { call, goto, label, push } from "../compiler/vm-commands";
import { AssemblyContext } from "../intermediate/assembly-context";
import { interpret } from "../intermediate/interpret";

export function init(): string[] {
  const assemblyContext = new AssemblyContext("Init");
  return interpret(assemblyContext, [
    push("constant", 255),
    call("Sys.init", 0),
    label("end"),
    goto("end"),
  ]);
}
