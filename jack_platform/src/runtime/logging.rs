use crate::{common::*, runtime::alu::AluResult};
use colored::Colorize;

pub fn log_result(instruction: &Instruction, runtime: &ExecutionContext, result: &AluResult) {
    // clear terminal
    //print!("{esc}[2J{esc}[1;1H", esc = 27 as char);

    println!(
        "{} {} {}",
        format!("{}:", runtime.cycle).dimmed(),
        format!("{}", instruction.str).blue(),
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
        format!(
            "M[{}]: {}",
            runtime.a, runtime.memory[runtime.a as u16 as usize]
        )
        .black()
    };

    let pc = if result.write_pc {
        format!("*PC: {}*", runtime.a).green()
    } else {
        format!("PC: {}", runtime.pc).black()
    };

    println!("{}", format!("   [{}, {}, {}, {}]", a, d, m, pc).black());

    println!(
        "{}",
        format!("{}:{}", instruction.file, instruction.line).dimmed()
    );
    // load instruction.file lines, and display them in the terminal, highlighting instruction.line
    let content = std::fs::read_to_string(&instruction.file).unwrap();
    let lines: Vec<&str> = content.lines().collect();

    let size = 5;
    let middle = size / 2;
    let start = if instruction.line < middle {
        0
    } else if instruction.line > lines.len() - (middle + 1) {
        lines.len() - size
    } else {
        instruction.line as usize - middle
    };

    let lines: Vec<&str> = lines;
    for (i, line) in lines.iter().enumerate().skip(start).take(size) {
        if i == instruction.line - 1 {
            println!("{}", format!("{:4}> {}", i + 1, line).blue());
        } else {
            println!("{:4}: {}", i + 1, line);
        }
    }
}
