mod assembler {
    mod assemble;
    pub use assemble::assemble;
}
mod runtime {
    mod alu;
    mod compute;
    mod execute;
    mod logging;
    pub use execute::execute_to_end;
}
mod common {
    mod models;
    mod utils;
    pub use models::*;
    pub use utils::*;
}

use crate::{assembler::assemble, common::*, runtime::execute_to_end};

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let file = args.get(1).map_or("prog/simple.asm", |v| v.as_str());
    let instructions = assemble_file(file);
    execute_to_end(instructions, ExecutionConfig { log: true });
}

pub fn assemble_file(file: &str) -> Vec<Instruction> {
    assemble(
        std::fs::read_to_string(file)
            .expect("Could not read file")
            .lines()
            .collect(),
    )
}

#[cfg(test)]
mod tests {

    use super::*;
    use crate::assembler::assemble;

    #[test]
    fn test_simple_program() {
        let instructions = assemble(vec![
            "// 1 + 2 = 3",
            "@1",
            "D=A",
            "@2",
            "D=D+A",
            "@0",
            "M=D",
        ]);

        let runtime = execute_to_end(instructions, ExecutionConfig { log: false });

        assert_eq!(runtime.memory[0], 3);
    }
}
