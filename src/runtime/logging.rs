use crate::{common::*, runtime::alu::AluResult};
use colored::Colorize;

pub fn log_result(instruction: &Instruction, runtime: &ExecutionContext, result: &AluResult) {
    println!(
        "{} {} {}",
        format!("{}:", runtime.pc).white(),
        format!("{}", instruction.source).blue(),
        format!("({:016b})", instruction.op).dimmed(),
    );

    let a = if result.write_a {
        format!("*A: {}*", result.out).green()
    } else {
        format!("A: {}", runtime.a).black()
    };

    let d = if result.write_d {
        format!("*D: {}*", result.out).green()
    } else {
        format!("D: {}", runtime.d).black()
    };

    let m = if result.write_m {
        format!("*M[{}]: {}*", runtime.a, result.out).green()
    } else {
        format!("M[{}]: {}", runtime.a, runtime.memory[runtime.a as usize]).black()
    };

    let pc = if result.write_pc {
        format!("*PC: {}*", result.out).green()
    } else {
        format!("PC: {}", runtime.pc).black()
    };

    println!("{}", format!("   [{}, {}, {}, {}]", a, d, m, pc).black());
}
