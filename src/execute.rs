use crate::{
    assemble::AssembledInstruction,
    compute::compute,
    runtime::{new_runtime, Runtime},
};

pub struct ExecutionOptions {
    pub log: bool,
}

/***
 * The compute_to_end function is used to execute all instructions until the end of the program.
 */
pub fn execute_to_end(
    instructions: Vec<AssembledInstruction>,
    options: ExecutionOptions,
) -> Runtime {
    let mut runtime = new_runtime();
    while (runtime.pc as usize) < instructions.len() {
        let instruction = &instructions[runtime.pc as usize];
        compute(&mut runtime, &instruction, options.log);
    }
    runtime
}
