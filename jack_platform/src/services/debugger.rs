use crate::common::*;
use colored::Colorize;

pub fn debug_result(instruction: &Instruction, _runtime: &ExecutionContext, _result: &AluResult) {
    let mut input = String::new();

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

    println!(
        "{}",
        format!("{}:{}", instruction.file, instruction.line).dimmed()
    );

    let lines: Vec<&str> = lines;
    for (i, line) in lines.iter().enumerate().skip(start).take(size) {
        if i == instruction.line - 1 {
            println!("{}", format!("{:4}> {}", i + 1, line).blue());
        } else {
            println!("{:4}: {}", i + 1, line);
        }
    }

    std::io::stdin().read_line(&mut input).unwrap();
}
