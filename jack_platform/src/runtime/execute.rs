use crate::{
    common::*,
    runtime::alu::{apply_alu, compute_alu},
};

/***
 * The compute_to_end function is used to execute all instructions until the end of the program.
 */
pub fn execute_to_end(
    instructions: Vec<Instruction>,
    config: &mut ExecutionConfig,
) -> ExecutionContext {
    let mut context = ExecutionContext::new();

    while (context.pc as usize) < instructions.len() {
        let instruction = &instructions[context.pc as usize];

        if context.cycle > 2000000 {
            panic!("Failed to finish in 2 million cycles, exiting");
        }

        if instruction.str == "0;JMP" && context.a as usize == context.pc - 1 {
            break;
        }

        execute(&mut context, &instruction, config);
    }
    context
}

pub fn execute_forever(
    instructions: Vec<Instruction>,
    config: &mut ExecutionConfig,
) -> ExecutionContext {
    let mut context = ExecutionContext::new();

    while (context.pc as usize) < instructions.len() {
        let instruction = &instructions[context.pc as usize];

        execute(&mut context, &instruction, config);
    }
    context
}

pub fn execute(
    runtime: &mut ExecutionContext,
    instruction: &Instruction,
    config: &mut ExecutionConfig,
) {
    let result = compute_alu(
        instruction.op,
        runtime.a,
        runtime.d,
        runtime.memory[runtime.a as u16 as usize],
    );

    for service in &mut config.services {
        service.tick(instruction, runtime, &result);
    }

    apply_alu(runtime, &result);
}
