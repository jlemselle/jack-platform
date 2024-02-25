mod alu;
mod computer;
mod cpu;
use crate::computer::compute;

fn main() {
    // 1 + 2 = 3
    compute(vec![
        0b0000_0000_0000_0001u16 as i16, // @1
        0b1110_1100_0001_0000u16 as i16, // D=A
        0b0000_0000_0000_0010u16 as i16, // @2
        0b1110_0000_1001_0000u16 as i16, // D=D+A
        0b0000_0000_0000_0000u16 as i16, // @0
        0b1110_0011_0000_1000u16 as i16, // M=D
    ]);
}
