use crate::{
    common::*,
    runtime::{
        alu::{apply_alu, compute_alu},
        logging::log_result,
    },
};

/***
 * The compute_to_end function is used to execute all instructions until the end of the program.
 */
pub fn execute_to_end(instructions: Vec<Instruction>, config: ExecutionConfig) -> ExecutionContext {
    let mut context = new_execution_context();
    let mut input = String::new();
    while (context.pc as usize) < instructions.len() {
        let instruction = &instructions[context.pc as usize];

        if context.cycle > 2000000 {
            panic!("Failed to finish in 2 million cycles, exiting");
        }

        if instruction.str == "0;JMP" && context.a as usize == context.pc - 1 {
            break;
        }

        execute(&mut context, &instruction, &config, &mut input);
    }
    context
}

pub fn execute(
    runtime: &mut ExecutionContext,
    instruction: &Instruction,
    config: &ExecutionConfig,
    input: &mut String,
) {
    let result = compute_alu(
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

    apply_alu(runtime, &result);
}
