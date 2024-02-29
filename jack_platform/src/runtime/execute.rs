use crate::{common::*, runtime::compute::compute};

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

        compute(&mut context, &instruction, &config, &mut input);
    }
    context
}
