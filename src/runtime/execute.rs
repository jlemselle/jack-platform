use crate::{common::*, runtime::compute::compute};

/***
 * The compute_to_end function is used to execute all instructions until the end of the program.
 */
pub fn execute_to_end(instructions: Vec<Instruction>, config: ExecutionConfig) -> ExecutionContext {
    let mut context = new_execution_context();
    while (context.pc as usize) < instructions.len() {
        let instruction = &instructions[context.pc as usize];
        compute(&mut context, &instruction, &config);
    }
    context
}
