use crate::common::*;
use std::fs::OpenOptions;
use std::io::Write;

pub struct FileLoggerService {
    file: Option<std::fs::File>,
}

impl FileLoggerService {
    pub fn default() -> FileLoggerService {
        std::fs::remove_file("log.txt").ok();

        let file = OpenOptions::new()
            .create(true)
            .append(true)
            .open("log.txt")
            .expect("Failed to open log file");
        FileLoggerService { file: Some(file) }
    }
}

impl ExecutionService for FileLoggerService {
    fn tick(&mut self, instruction: &Instruction, context: &ExecutionContext, result: &AluResult) -> ExecutionServiceResult {
        if let Some(ref mut file) = &mut self.file {
            let message = format!(
                "{} {}",
                format!("{}:", context.pc),
                format!("{}", instruction.source),
            );

            let a = if result.write_a {
                format!("*A: {}*", result.out)
            } else {
                format!("A: {}", context.a)
            };

            let d = if result.write_d {
                format!("*D: {}*", result.out)
            } else {
                format!("D: {}", context.d)
            };

            let m = if result.write_m {
                format!("*M[{}]: {}*", context.a, result.out)
            } else {
                if context.a as usize >= context.memory.len() {
                    format!("M[{}]: {}", context.a, 0)
                } else {
                    format!("M[{}]: {}", context.a, context.memory[context.a as u16 as usize])
                }
            };

            let pc = if result.write_pc {
                format!("*PC: {}*", context.a)
            } else {
                format!("PC: {}", context.pc)
            };

            writeln!(file, "{}", message).expect("Failed to write to log file");
            writeln!(file, "   [{}, {}, {}, {}]", a, d, m, pc).expect("Failed to write to log file");
        }

        ExecutionServiceResult::new()
    }
}
