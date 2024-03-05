import { constants } from "../assembler/symbol-reader";
import { Int16 } from "../core";
import { AssemblyContext } from "../intermediate/assembly-context";
import { interpret } from "../intermediate/interpret";
import { execute } from "./execute";
import { init } from "./init";

export class ExecutionResult {
  stack: Int16[];
  ram: Int16[];
  locals: Int16[];
  args: Int16[];

  SP: Int16;
  LCL: Int16;
  ARG: Int16;

  constructor(ram: Int16[]) {
    this.SP = ram[constants.SP];
    this.LCL = ram[constants.LCL];
    this.ARG = ram[constants.ARG];

    this.stack = ram.slice(256, this.SP.value);
    this.ram = ram;
    this.locals = ram.slice(this.LCL.value, this.LCL.value + 10);
    this.args = ram.slice(this.ARG.value, this.ARG.value + 10);
  }
}

export function executeIl(
  il: string[],
  operatingSystem: string[]
): ExecutionResult {
  const context = new AssemblyContext("file");
  const instructions = [
    ...init(),
    ...operatingSystem,
    ...interpret(context, il),
  ];

  const { ram } = execute(instructions, {
    ram: [
      { loc: constants.LCL, value: 400 },
      { loc: constants.ARG, value: 500 },
      { loc: constants.THIS, value: 600 },
      { loc: constants.THAT, value: 700 },
    ],
  });
  return new ExecutionResult(ram);
}

export function executeIlBasic(il: string[]): ExecutionResult {
  const context = new AssemblyContext("file");
  const instructions = [...interpret(context, il)];

  const { ram } = execute(instructions, {
    ram: [
      { loc: constants.SP, value: 256 },
      { loc: constants.LCL, value: 400 },
      { loc: constants.ARG, value: 500 },
      { loc: constants.THIS, value: 600 },
      { loc: constants.THAT, value: 700 },
    ],
  });
  return new ExecutionResult(ram);
}
