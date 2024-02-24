
use std::fmt::{Display, Formatter};

#[derive(Debug)]
pub struct AluOutput {
    out: i16,
    zr: bool,
    ng: bool,
}

impl Display for AluOutput {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "Output: {}, Zero Flag: {}, Negative Flag: {}",
            self.out, self.zr, self.ng
        )
    }
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
