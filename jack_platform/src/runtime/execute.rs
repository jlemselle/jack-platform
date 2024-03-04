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
    context: &mut ExecutionContext,
    instruction: &Instruction,
    config: &mut ExecutionConfig,
) {
    let result = compute_alu(
        instruction.op,
        context.a,
        context.d,
        context.memory[context.a as u16 as usize],
    );

    for service in &mut config.services {
        let result = service.tick(instruction, context, &result);
        if result.should_halt {
            context.pc = u16::MAX as usize;
        }
        if result.key_code != -1 {
            context.memory[24576] = result.key_code;
        }
    }

    apply_alu(context, &result);
}
