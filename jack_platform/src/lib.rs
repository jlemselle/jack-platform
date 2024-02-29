pub mod assembler {
    mod assemble;
    pub use assemble::assemble;
}
pub mod runtime {
    mod alu;
    mod execute;
    pub use execute::execute_to_end;
}
pub mod common {
    mod models;
    mod utils;
    pub use models::*;
    pub use utils::*;
}
pub mod services {
    pub mod debugger;
    pub mod logger;
}

use crate::{assembler::assemble, common::*};

pub fn assemble_file(file: &str) -> Vec<Instruction> {
    assemble(
        file.to_string(),
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
    use crate::runtime::execute_to_end;

    #[test]
    fn test_simple_program() {
        let instructions = assemble(
            "".to_string(),
            vec!["// 1 + 2 = 3", "@1", "D=A", "@2", "D=D+A", "@0", "M=D"],
        );

        let runtime = execute_to_end(instructions, ExecutionConfig::default());

        assert_eq!(runtime.memory[0], 3);
    }

    #[test]
    fn test_labels() {
        let instructions = assemble("".to_string(), vec!["@END", "0;JMP", "@17", "(END)"]);

        let runtime = execute_to_end(instructions, ExecutionConfig::default());

        assert_ne!(runtime.a, 17);
    }

    #[test]
    fn test_jumping() {
        test_jump("1;JGT", true);
        test_jump("0;JGT", false);
        test_jump("-1;JGT", false);

        test_jump("1;JEQ", false);
        test_jump("0;JEQ", true);
        test_jump("-1;JEQ", false);

        test_jump("1;JGE", true);
        test_jump("0;JGE", true);
        test_jump("-1;JGE", false);

        test_jump("1;JLT", false);
        test_jump("0;JLT", false);
        test_jump("-1;JLT", true);

        test_jump("1;JNE", true);
        test_jump("0;JNE", false);
        test_jump("-1;JNE", true);

        test_jump("1;JLE", false);
        test_jump("0;JLE", true);
        test_jump("-1;JLE", true);

        test_jump("1;JMP", true);
        test_jump("0;JMP", true);
        test_jump("-1;JMP", true);
    }

    fn test_jump(instruction: &str, should_jump: bool) {
        let instructions = assemble("".to_string(), vec!["@17", instruction]);

        let runtime = execute_to_end(instructions, ExecutionConfig::default());

        if should_jump {
            assert_eq!(runtime.pc, 17);
        } else {
            assert_ne!(runtime.pc, 17);
        }
    }
}
