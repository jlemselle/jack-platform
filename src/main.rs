mod alu;
mod assemble;
mod compute;
mod cpu;
mod execute;
mod runtime;
mod utils;

use crate::assemble::assemble;
use crate::execute::execute_to_end;
use crate::execute::ExecutionOptions;

fn main() {
    let instructions = assemble(vec![
        "// 1 + 2 = 3",
        "@1",
        "D=A",
        "@2",
        "D=D+A",
        "@0",
        "M=D",
    ]);

    let runtime = execute_to_end(instructions, ExecutionOptions { log: true });

    assert_eq!(runtime.memory[0], 3);
}

#[cfg(test)]
mod tests {

    use super::*;

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

        let runtime = execute_to_end(instructions, ExecutionOptions { log: false });

        assert_eq!(runtime.memory[0], 3);
    }
}
