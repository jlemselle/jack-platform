use crate::cpu::cpu;

pub fn compute() {
    // instantiate registers
    let mut a = 0;
    let mut d = 0;

    // instantiate memory
    let mut memory = vec![0; 32_768];

    // instantiate program counter
    let mut pc = 0;

    // instantiate instructions
    let instructions = vec![
        0b1111_1111_1111_1000u16 as i16, // -1
        0b1111_1111_1111_1000u16 as i16, // -2
        0b1111_1111_1111_1000u16 as i16, // -3
        0b1111_1111_1111_1000u16 as i16, // -4
        0b1111_1111_1111_1000u16 as i16, // -5
        0b1111_1111_1111_1000u16 as i16, // -6
        0b1111_1111_1111_1000u16 as i16, // -7
        0b1111_1111_1111_1000u16 as i16, // -8
        0b1111_1111_1111_0000u16 as i16, // -9
        0b1111_1111_1111_0000u16 as i16, // -10
    ];

    // while pc is in range of instructions
    while (pc as usize) < instructions.len() {
        // execute instruction
        let op = instructions[pc];
        println!("Executing instruction: {:016b}", op);
        let result = cpu(instructions[pc], a, d, memory[a as usize]);

        if result.write_a {
            println!("A: {} -> {}", a, result.out);
            a = result.out;
        }

        if result.write_d {
            println!("D: {} -> {}", d, result.out);
            d = result.out;
        }

        if result.write_m {
            println!("M[{}]: {} -> {}", a, memory[a as usize], result.out);
            memory[a as usize] = result.out;
        }

        if result.write_pc {
            println!("PC: {} -> {}", pc, result.out);
            pc = result.out as usize;
        } else {
            println!("PC: {} -> {}", pc, pc + 1);
            pc += 1;
        }
    }
}