import { CompilationContext } from "../compiler/compilation-context";
import { compileClass } from "../compiler/compile-class";
import { parseClass } from "../parser/class";
import { InputSource } from "../parser/parse-utils";
import { tokenize } from "../tokenizer/tokenizer";
import { ExecutionResult, executeIl } from "./execute-il";

export function executeClass(
  source: string,
  usageSource: string,
  operatingSystem: string[]
): ExecutionResult {
  const parseResult = parseClass()(new InputSource(tokenize(source, false), 0));
  const parseCallResult = parseClass()(
    new InputSource(tokenize(usageSource, false), 0)
  );

  if (parseResult.success && parseCallResult.success) {
    const context = new CompilationContext();
    const vm = compileClass(parseResult.value, context);
    const code = [...compileClass(parseCallResult.value, context), ...vm];
    return executeIl(code, operatingSystem);
  } else {
    throw new Error("parser failed");
  }
}

export function executeMain(
  source: string,
  operatingSystem: string[]
): ExecutionResult {
  const parseResult = parseClass()(new InputSource(tokenize(source, false), 0));

  if (parseResult.success) {
    const context = new CompilationContext();
    const code = compileClass(parseResult.value, context);
    return executeIl(code, operatingSystem);
  } else {
    throw new Error("parser failed");
  }
}
