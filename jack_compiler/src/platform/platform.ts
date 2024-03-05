import { Int16, Memory, Register, zero } from "../core";

export const RAM_SIZE = 65536;

function alu(
  x: Int16,
  y: Int16,
  zx: boolean,
  nx: boolean,
  zy: boolean,
  ny: boolean,
  f: boolean,
  no: boolean
): {
  out: Int16;
  zr: boolean;
  ng: boolean;
} {
  // Apply zx and zy operations
  if (zx) x = zero;
  if (zy) y = zero;

  // Apply nx and ny operations
  if (nx) x = x.not();
  if (ny) y = y.not();

  // Perform the operation based on the 'f' bit
  let out: Int16;
  if (f) {
    out = x.add(y);
  } else {
    out = x.and(y);
  }

  // Apply no operation
  if (no) out = out.not();

  // Check zero and negative flags
  const zr = out.equal(zero);
  // Checking the most significant bit for negative
  const ng = out.isNegative();

  return {
    out,
    zr,
    ng,
  };
}

interface InstructionResult {
  out: Int16;
  writeA: boolean;
  writeM: boolean;
  writeD: boolean;
  writePc: boolean;
}

function processInstruction(
  op: Int16,
  a: Int16,
  d: Int16,
  m: Int16
): InstructionResult {
  const isImmediate = !op.bit(15);
  if (isImmediate) {
    return {
      out: op,
      writeA: true,
      writeM: false,
      writeD: false,
      writePc: false,
    };
  }

  // A or M control bit
  const isMemory = op.bit(12);

  // ALU control bits
  const zx = op.bit(11);
  const nx = op.bit(10);
  const zy = op.bit(9);
  const ny = op.bit(8);
  const f = op.bit(7);
  const no = op.bit(6);

  // Write control bits
  const writeA = op.bit(5);
  const writeD = op.bit(4);
  const writeM = op.bit(3);

  // Jump control bits
  const j1 = op.bit(2);
  const j2 = op.bit(1);
  const j3 = op.bit(0);

  const result = alu(d, isMemory ? m : a, zx, nx, zy, ny, f, no);

  const writePc =
    (j1 && result.ng) || (j2 && result.zr) || (j3 && !result.ng && !result.zr);

  return {
    out: result.out,
    writeA,
    writeM,
    writeD,
    writePc,
  };
}

export function tick(
  a: Register,
  d: Register,
  pc: Register,
  ram: Memory,
  rom: Memory
): { result: Int16; halt: boolean } {
  // read
  const aValue = a.read();
  const dValue = d.read();
  const pcValue = pc.read();
  const op = rom.read(pcValue);
  const mValue = ram.read(aValue);

  // detect infinite loop
  if (op.value === -5625 /* 0;JMP */ && aValue.value === pcValue.value - 1) {
    return { result: zero, halt: true };
  }

  // process
  const result = processInstruction(op, aValue, dValue, mValue);

  // write
  if (result.writePc) {
    pc.write(a.read());
  } else {
    pc.increment();
  }
  if (result.writeA) {
    a.write(result.out);
  }
  if (result.writeM) {
    ram.write(aValue, result.out);
  }
  if (result.writeD) {
    d.write(result.out);
  }

  return { result: result.out, halt: false };
}
