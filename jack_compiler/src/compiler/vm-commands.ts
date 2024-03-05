import { ArithmeticOp, PopSegment, PushSegment } from "../intermediate";
import { SourceMap } from "../tokenizer/token";

export function push(
  segment: PushSegment,
  offset: number,
  sourceMap?: SourceMap
): string {
  if (sourceMap) {
    return `push ${segment} ${offset} // ${sourceMap.line}:${sourceMap?.column}`;
  } else {
    return `push ${segment} ${offset}`;
  }
}

export function pop(segment: PopSegment, offset: number): string {
  return `pop ${segment} ${offset}`;
}

export function call(funcName: string, argCount: number): string {
  return `call ${funcName} ${argCount}`;
}

export function arithmetic(operation: ArithmeticOp): string {
  return `${operation}`;
}

export function subroutine(name: string, locals: number) {
  return `function ${name} ${locals}`;
}

export function label(label: string) {
  return `label ${label}`;
}

export function goto(label: string) {
  return `goto ${label}`;
}

export function ifGoto(label: string) {
  return `if-goto ${label}`;
}
