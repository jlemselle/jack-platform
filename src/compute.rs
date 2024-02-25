use colored::*;

use crate::{
    assemble::AssembledInstruction,
    cpu::{cpu, InstructionResult},
    runtime::Runtime,
};

/***
 * The compute function is used to execute a single instruction.
 */
pub fn compute(runtime: &mut Runtime, instruction: &AssembledInstruction, logging: bool) {
    let result = cpu(
        instruction.op,
        runtime.a,
        runtime.d,
        runtime.memory[runtime.a as usize],
    );

    if logging {
        log_result(instruction, &runtime, &result);
    }
    apply_result(runtime, &result);
}

fn log_result(instruction: &AssembledInstruction, runtime: &Runtime, result: &InstructionResult) {
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

fn apply_result(runtime: &mut Runtime, result: &InstructionResult) {
    if result.write_a {
        runtime.a = result.out;
    }

    if result.write_d {
        runtime.d = result.out;
    }

    if result.write_m {
        runtime.memory[runtime.a as usize] = result.out;
    }

    if result.write_pc {
        runtime.pc = result.out as usize;
    } else {
        runtime.pc += 1;
    }
}
