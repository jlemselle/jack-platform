use crate::{common::*, runtime::compute::compute};

/***
 * The compute_to_end function is used to execute all instructions until the end of the program.
 */
pub fn execute_to_end(instructions: Vec<Instruction>, config: ExecutionConfig) -> ExecutionContext {
    let mut context = new_execution_context();
    let mut input = String::new();
    while (context.pc as usize) < instructions.len() {
        let instruction = &instructions[context.pc as usize];

        if instruction.source == "0;JMP" && context.a as usize == context.pc - 1 {
            println!("Infinite loop detected, exiting");
            break;
        }

        compute(&mut context, &instruction, &config);
        if config.interactive {
            std::io::stdin().read_line(&mut input).unwrap();
        }
    }
    context
}
