use crate::common::*;
use colored::Colorize;

pub struct LoggerService {}

impl LoggerService {
    pub fn default() -> LoggerService {
        LoggerService {}
    }
}

impl ExecutionService for LoggerService {
    fn tick(&mut self, instruction: &Instruction, context: &ExecutionContext, result: &AluResult) -> ExecutionServiceResult {
        println!(
            "{} {} {}",
            format!("{}:", context.cycle).dimmed(),
            format!("{}", instruction.str).blue(),
            format!("({:016b})", instruction.op).dimmed(),
        );
    
        let a = if result.write_a {
            format!("*A: {}*", result.out).green()
        } else {
            format!("A: {}", context.a).white()
        };
    
        let d = if result.write_d {
            format!("*D: {}*", result.out).green()
        } else {
            format!("D: {}", context.d).white()
        };
    
        let m = if result.write_m {
            format!("*M[{}]: {}*", context.a, result.out).green()
        } else {
            if context.a as usize >= context.memory.len() {
                format!("M[{}]: {}", context.a, 0).white()
            } else {
                format!("M[{}]: {}", context.a, context.memory[context.a as u16 as usize]).white()
            }
        };
    
        let pc = if result.write_pc {
            format!("*PC: {}*", context.a).green()
        } else {
            format!("PC: {}", context.pc).white()
        };
    
        println!("{}", format!("   [{}, {}, {}, {}]", a, d, m, pc));

        ExecutionServiceResult::new()
    }
}
