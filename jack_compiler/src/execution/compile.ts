import { CompilationContext } from "../compiler/compilation-context";
import { compileClass } from "../compiler/compile-class";
import { AssemblyContext } from "../intermediate/assembly-context";
import { interpret } from "../intermediate/interpret";
import { ClassNode, parseClass } from "../parser/class";
import { InputSource } from "../parser/parse-utils";
import { Token } from "../tokenizer/token";
import { tokenize } from "../tokenizer/tokenizer";

export function compile(fileName: string, source: string): string[] {
  const parseResult = parseClass()(new InputSource(tokenize(source, false), 0));
  if (parseResult.success) {
    const compilationContext = new CompilationContext();
    const il = compileClass(parseResult.value, compilationContext);
    const assemblyContext = new AssemblyContext(fileName);
    return interpret(assemblyContext, il);
  } else {
    throw new Error(`class parser failed: ${parseResult.error}`);
  }
}

export function compileToIl(source: string): string[] {
  return compileToIlFull(source).il;
}

export function compileToIlFull(source: string): {
  il: string[];
  tokens: Token[];
  ast: ClassNode;
} {
  const tokens = tokenize(source, false);
  const parseResult = parseClass()(new InputSource(tokens, 0));
  if (parseResult.success) {
    const compilationContext = new CompilationContext();
    return {
      il: compileClass(parseResult.value, compilationContext),
      tokens: tokens,
      ast: parseResult.value,
    };
  } else {
    throw new Error(`class parser failed: ${parseResult.error}`);
  }
}
