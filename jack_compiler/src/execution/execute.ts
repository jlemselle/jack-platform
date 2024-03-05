import { assemble } from "../assembler/parser";
import { constants } from "../assembler/symbol-reader";
import { Int16, Memory, Register, i16, zero } from "../core";
import { RAM_SIZE, tick } from "../platform/platform";

export interface ExecutionContext {
  a?: number;
  d?: number;
  ram?: { loc: number; value: number }[];
}

export function calculate(source: string, context?: ExecutionContext): number {
  const { result } = execute([source], context);
  return result.value;
}

export function execute(
  source: string[],
  context?: ExecutionContext
): {
  a: Int16;
  d: Int16;
  pc: Int16;
  ram: Int16[];
  result: Int16;
} {
  const debug = false;
  const a = new Register();
  const d = new Register();
  const pc = new Register();
  const ram = Memory.empty(RAM_SIZE);

  if (context?.a) {
    a.write(i16(context.a));
  }

  if (context?.d) {
    d.write(i16(context.d));
  }

  if (context?.ram) {
    context.ram.forEach((preset) => {
      ram.write(i16(preset.loc), i16(preset.value));
    });
  }

  const { instructions, sources } = assemble(source);

  const rom = Memory.fromArray(instructions);

  let out = zero;
  let count = 0;
  let finishedInit = false;
  while (rom.withinRange(pc.read())) {
    const source = sources[pc.read().value];

    const { result, halt } = tick(a, d, pc, ram, rom);
    out = result;
    if (halt) {
      break;
    }

    if (source.includes("// end: function Main.main")) {
      finishedInit = true;
    }

    if (debug && finishedInit && source.includes("// end:")) {
      console.log(
        `\n\nSOURCE ${source
          .substring(source.indexOf("// end:") + 7)
          .trim()}\nSTACK (${ram.memory[constants.SP].value}) ${ram.memory
          .slice(256, ram.memory[constants.SP].value)
          .map((x) => x.value)}\n${printSegment(
          ram,
          "LOCAL",
          constants.LCL,
          10
        )}\n${printSegment(ram, "ARG", constants.ARG, 10)}\n${printSegment(
          ram,
          "THIS",
          constants.THIS,
          10
        )}\n${printStaticSegment(ram, "STATIC", 16, 10)}\n${printStaticSegment(
          ram,
          "RAW",
          0,
          15
        )}`
      );
    }

    count++;
    if (count > 99999999) {
      throw new Error(`Code did not complete with ${count} executions`);
    }
  }

  return {
    a: a.read(),
    d: d.read(),
    pc: pc.read(),
    ram: ram.memory,
    result: out,
  };
}

function printSegment(
  ram: Memory,
  label: string,
  pointer: number,
  count: number
) {
  return `${label} (${ram.memory[pointer].value}) ${ram.memory
    .slice(ram.memory[pointer].value, ram.memory[pointer].value + count)
    .map((x) => x.value)}`;
}

function printStaticSegment(
  ram: Memory,
  label: string,
  start: number,
  count: number
) {
  return `${label} (${start}) ${ram.memory
    .slice(start, start + count)
    .map((x) => x.value)}`;
}
