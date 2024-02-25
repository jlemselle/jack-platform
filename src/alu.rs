/**
 * ALU (Arithmetic Logic Unit) module
 * This module contains the implementation of the ALU, which is responsible for performing arithmetic and logic operations.
 */

pub struct AluOutput {
    pub out: i16,
    pub zr: bool,
    pub ng: bool,
}

pub fn alu(x: i16, y: i16, zx: bool, nx: bool, zy: bool, ny: bool, f: bool, no: bool) -> AluOutput {
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
    let ng = out < 0; // Most significant bit is set for negative numbers

    AluOutput { out, zr, ng }
}
