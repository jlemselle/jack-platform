import {
  $function,
  $return,
  Command,
  PopSegment,
  PushSegment,
  add,
  and,
  call,
  eq,
  goto,
  gt,
  ifGoto,
  label,
  lt,
  neg,
  not,
  or,
  pop,
  push,
  sub,
} from ".";
import { trimComment } from "../core/parse";
import { AssemblyContext } from "./assembly-context";

export function interpret(context: AssemblyContext, il: string[]): string[] {
  return il.flatMap((line) => {
    const asm = interpretLine(context, trimComment(line));
    asm[0] += ` // start: ${line}`;
    asm[asm.length - 1] += ` // end: ${line}`;
    return asm;
  });
}

function interpretLine(context: AssemblyContext, line: string): string[] {
  return parseLine(line).assemble(context);
}

function parseLine(line: string): Command {
  const terms = line.split(" ").map((x) => x.trim());
  switch (terms[0]) {
    case "push":
      return push(<PushSegment>terms[1], +terms[2]);
    case "pop":
      return pop(<PopSegment>terms[1], +terms[2]);
    case "add":
      return add();
    case "sub":
      return sub();
    case "and":
      return and();
    case "or":
      return or();
    case "neg":
      return neg();
    case "not":
      return not();
    case "eq":
      return eq();
    case "gt":
      return gt();
    case "lt":
      return lt();
    case "label":
      return label(terms[1]);
    case "goto":
      return goto(terms[1]);
    case "if-goto":
      return ifGoto(terms[1]);
    case "function":
      return $function(terms[1], +terms[2]);
    case "return":
      return $return();
    case "call":
      return call(terms[1], +terms[2]);
    default:
      throw new Error(`Unknown command ${terms[0]}`);
  }
}
