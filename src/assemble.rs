use core::panic;

use crate::utils::is_op_immediate;

pub struct AssembledInstruction {
    pub op: u16,
    pub instruction: String,
    pub source: String,
}

pub fn assemble(instructions: Vec<&str>) -> Vec<AssembledInstruction> {
    instructions
        .iter()
        .filter_map(|line| assemble_line(line))
        .collect()
}

pub fn assemble_line(line: &str) -> Option<AssembledInstruction> {
    let trimmed = trim_comment(line).trim();
    if trimmed.is_empty() {
        return None;
    }
    if trimmed.starts_with('(') {
        return None;
    }
    Some(AssembledInstruction {
        op: assemble_instruction(trimmed),
        instruction: trimmed.to_string(),
        source: line.to_string(),
    })
}

pub fn assemble_instruction(instruction: &str) -> u16 {
    if instruction.starts_with('@') {
        assemble_immediate(instruction)
    } else {
        assemble_computation(instruction)
    }
}

fn trim_comment(instruction: &str) -> &str {
    match instruction.find("//") {
        Some(index) => &instruction[..index],
        None => instruction,
    }
}

fn assemble_immediate(instruction: &str) -> u16 {
    match instruction[1..].parse::<u16>() {
        Ok(value) => {
            if !is_op_immediate(value) {
                panic!("Immediate value must be between 0-32767: {}", instruction);
            }
            value
        }
        Err(_) => {
            panic!("Invalid immediate value: {}", instruction);
        }
    }
}

fn assemble_computation(instruction: &str) -> u16 {
    if instruction.contains('=') {
        let parts: Vec<&str> = instruction.split('=').collect();
        0b1110_0000_0000_0000 | dest(parts[0]) | comp(parts[1])
    } else {
        0b1110_0000_0000_0000 | comp(instruction)
    }
}

fn dest(value: &str) -> u16 {
    let mut out = 0b0000_0000_0000_0000;
    if value.contains('A') {
        out |= 0b0000_0000_0010_0000;
    }
    if value.contains('D') {
        out |= 0b0000_0000_0001_0000;
    }
    if value.contains('M') {
        out |= 0b0000_0000_0000_1000;
    }
    out
}

fn comp(value: &str) -> u16 {
    match value {
        "0" => 0b0000_1010_1000_0000,
        "1" => 0b0000_1111_1100_0000,
        "-1" => 0b0000_1110_1000_0000,
        "D" => 0b0000_0011_0000_0000,
        "A" => 0b0000_1100_0000_0000,
        "!D" => 0b0000_0011_0100_0000,
        "!A" => 0b0000_1100_0100_0000,
        "-D" => 0b0000_0011_1100_0000,
        "-A" => 0b0000_1100_1100_0000,
        "D+1" => 0b0000_0111_1100_0000,
        "A+1" => 0b0000_1101_1100_0000,
        "D-1" => 0b0000_0011_1000_0000,
        "A-1" => 0b0000_1100_1000_0000,
        "D+A" => 0b0000_0000_1000_0000,
        "D-A" => 0b0000_0100_1100_0000,
        "A-D" => 0b0000_0001_1100_0000,
        "D&A" => 0b0000_0000_0000_0000,
        "D|A" => 0b0000_0101_0100_0000,
        _ => panic!("Invalid computation: {}", value),
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_assemble_immediate() {
        assert_eq!(assemble_instruction("@0"), 0b0000_0000_0000_0000);
        assert_eq!(assemble_instruction("@1"), 0b0000_0000_0000_0001);
        assert_eq!(assemble_instruction("@2"), 0b0000_0000_0000_0010);
        assert_eq!(assemble_instruction("@32767"), 0b0111_1111_1111_1111);
    }

    #[test]
    fn test_assemble_computation() {
        assert_eq!(assemble_instruction("D=A"), 0b1110_1100_0001_0000);
        assert_eq!(assemble_instruction("D=D+A"), 0b1110_0000_1001_0000);
        assert_eq!(assemble_instruction("M=D"), 0b1110_0011_0000_1000);
    }

    #[test]
    #[should_panic(expected = "Immediate value must be between 0-32767: @32768")]
    fn test_assemble_immediate_overflow() {
        assemble_instruction("@32768");
    }

    #[test]
    #[should_panic(expected = "Invalid immediate value: @asdf")]
    fn test_assemble_invalid_immediate() {
        assemble_instruction("@asdf");
    }
}
