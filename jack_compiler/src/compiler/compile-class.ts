import { ClassNode } from "../parser/class";
import { CompilationContext } from "./compilation-context";
import { compileSubroutine } from "./compile-subroutine";

export function compileClass(
  node: ClassNode,
  context: CompilationContext
): string[] {
  context.setClass(node);
  const result = node.subroutines.flatMap((x) => compileSubroutine(x, context));
  context.clearClass();
  return result;
}
