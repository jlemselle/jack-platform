use crate::common::*;

pub struct OutputService {}

impl ExecutionService for OutputService {
    fn tick(&mut self, instruction: &Instruction, runtime: &ExecutionContext, result: &AluResult) {
        output_result(instruction, runtime, result);
    }
}

pub fn output_result(instruction: &Instruction, runtime: &ExecutionContext, _result: &AluResult) {
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
}
