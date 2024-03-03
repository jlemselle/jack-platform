use crate::common::*;
use colored::Colorize;

pub struct LoggerService {}

impl ExecutionService for LoggerService {
    fn tick(&mut self, instruction: &Instruction, runtime: &ExecutionContext, result: &AluResult) {
        log_result(instruction, runtime, result);
    }
}

pub fn log_result(instruction: &Instruction, runtime: &ExecutionContext, result: &AluResult) {
    println!(
        "{} {} {}",
        format!("{}:", runtime.cycle).dimmed(),
        format!("{}", instruction.str).blue(),
        format!("({:016b})", instruction.op).dimmed(),
    );

    let a = if result.write_a {
        format!("*A: {}*", result.out).green()
    } else {
        format!("A: {}", runtime.a).white()
    };

    let d = if result.write_d {
        format!("*D: {}*", result.out).green()
    } else {
        format!("D: {}", runtime.d).white()
    };

    let m = if result.write_m {
        format!("*M[{}]: {}*", runtime.a, result.out).green()
    } else {
        format!(
            "M[{}]: {}",
            runtime.a, runtime.memory[runtime.a as u16 as usize]
        )
        .white()
    };

    let pc = if result.write_pc {
        format!("*PC: {}*", runtime.a).green()
    } else {
        format!("PC: {}", runtime.pc).white()
    };

    println!("{}", format!("   [{}, {}, {}, {}]", a, d, m, pc));
}
