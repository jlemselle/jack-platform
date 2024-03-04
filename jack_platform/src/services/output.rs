use crate::common::*;

pub struct OutputService {}

impl ExecutionService for OutputService {
    fn tick(&mut self, instruction: &Instruction, context: &ExecutionContext, _result: &AluResult) -> ExecutionServiceResult {
        if instruction
            .source
            .contains("end: function Output.printChar ")
        {
            let arg = context.memory[2];
            let c = context.memory[arg as usize];
            if c == 128 {
                println!();
            } else {
                print!("{}", c as u8 as char);
            }
        }
    
        if instruction.source.contains("end: function Output.println ") {
            println!();
        }

        ExecutionServiceResult::new()
    }
}

