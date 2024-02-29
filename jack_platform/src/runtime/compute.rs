use crate::{
    common::*,
    runtime::{
        alu::{alu, apply_result},
        logging::log_result,
    },
};

pub fn compute(
    runtime: &mut ExecutionContext,
    instruction: &Instruction,
    config: &ExecutionConfig,
    input: &mut String,
) {
    let result = alu(
        instruction.op,
        runtime.a,
        runtime.d,
        runtime.memory[runtime.a as u16 as usize],
    );

    if instruction
        .source
        .contains("end: function Output.printChar ")
    {
        let arg = runtime.memory[2];
        let c = runtime.memory[arg as usize];
        if c == 128 {
            println!();
        } else {
            print!("{}", c as u8 as char);
        }
    }

    if instruction.source.contains("end: function Output.println ") {
        println!();
    }

    if config.log {
        log_result(instruction, &runtime, &result);
    }

    if config.interactive {
        std::io::stdin().read_line(input).unwrap();
    }

    apply_result(runtime, &result);
}
