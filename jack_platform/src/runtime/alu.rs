use crate::common::*;

pub fn compute_alu(op: u16, a: i16, d: i16, m: i16) -> AluResult {
    if is_op_immediate(op) {
        return AluResult {
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

    let (out, zr, ng) = alu(d, if is_memory { m } else { a }, zx, zy, nx, ny, f, no);

    let write_pc = (j1 && ng) || (j2 && zr) || (j3 && !ng && !zr);

    AluResult {
        out,
        write_a,
        write_m,
        write_d,
        write_pc,
    }
}

pub fn apply_alu(context: &mut ExecutionContext, result: &AluResult) {
    if result.write_pc {
        context.pc = context.a as u16 as usize;
    } else {
        context.pc += 1;
    }

    if result.write_d {
        context.d = result.out;
    }

    if result.write_m {
        context.memory[context.a as u16 as usize] = result.out;
    }

    if result.write_a {
        context.a = result.out;
    }

    context.cycle += 1;
}

fn alu(
    x: i16,
    y: i16,
    zx: bool,
    zy: bool,
    nx: bool,
    ny: bool,
    f: bool,
    no: bool,
) -> (i16, bool, bool) {
    // Apply zx and zy operations
    let x = if zx { 0 } else { x };
    let y = if zy { 0 } else { y };

    // Apply nx and ny operations
    let x = if nx { !x } else { x };
    let y = if ny { !y } else { y };

    // Perform the operation based on the 'f' bit
    let out = if f {
        x.wrapping_add(y) // Use wrapping_add for potential overflow
    } else {
        x & y
    };

    // Apply no operation
    let out = if no { !out } else { out };

    // Check zero and negative flags
    let zr = out == 0;
    let ng = out < 0;
    // Most significant bit is set for negative numbers
    (out, zr, ng)
}
