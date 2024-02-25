/**
 * CPU module
 * This module contains the implementation of the CPU, which is responsible for executing instructions.
 */
use crate::{alu::alu, utils::is_op_immediate};

pub struct InstructionResult {
    pub out: i16,
    pub write_a: bool,
    pub write_m: bool,
    pub write_d: bool,
    pub write_pc: bool,
}

pub fn cpu(op: u16, a: i16, d: i16, m: i16) -> InstructionResult {
    if is_op_immediate(op) {
        return InstructionResult {
            out: op as i16,
            write_a: true,
            write_m: false,
            write_d: false,
            write_pc: false,
        };
    }

    // A or M control bit
    let is_memory = op & (1 << 12) != 0;

    // ALU control bits
    let zx = op & (1 << 11) != 0;
    let nx = op & (1 << 10) != 0;
    let zy = op & (1 << 9) != 0;
    let ny = op & (1 << 8) != 0;
    let f = op & (1 << 7) != 0;
    let no = op & (1 << 6) != 0;

    // Write control bits
    let write_a = op & (1 << 5) != 0;
    let write_d = op & (1 << 4) != 0;
    let write_m = op & (1 << 3) != 0;

    // Jump control bits
    let j1 = op & (1 << 2) != 0;
    let j2 = op & (1 << 1) != 0;
    let j3 = op & (1 << 0) != 0;

    let result = alu(d, if is_memory { m } else { a }, zx, nx, zy, ny, f, no);

    let write_pc = (j1 && result.ng) || (j2 && result.zr) || (j3 && !result.ng && !result.zr);

    InstructionResult {
        out: result.out,
        write_a,
        write_m,
        write_d,
        write_pc,
    }
}
