use core::panic;
use std::collections::HashMap;

use crate::common::*;

pub fn assemble(file: String, instructions: Vec<&str>) -> Vec<Instruction> {
    let labels = collect_labels(&instructions);
    let result: Vec<Instruction> = instructions
        .iter()
        .enumerate()
        .filter_map(|(index, &source)| assemble_line(&file, index + 1, source, &labels))
        .flatten()
        .collect();

    println!("Assembled {} instructions ({}% of ROM)", result.len(), (result.len() as f32 / u16::MAX as f32) * 100.0);

    result
}

fn collect_labels(instructions: &Vec<&str>) -> HashMap<String, u16> {
    let mut symbol_table = HashMap::new();
    symbol_table.insert("SP".to_string(), 0);
    symbol_table.insert("LCL".to_string(), 1);
    symbol_table.insert("ARG".to_string(), 2);
    symbol_table.insert("THIS".to_string(), 3);
    symbol_table.insert("THAT".to_string(), 4);
    symbol_table.insert("R0".to_string(), 0);
    symbol_table.insert("R1".to_string(), 1);
    symbol_table.insert("R2".to_string(), 2);
    symbol_table.insert("R3".to_string(), 3);
    symbol_table.insert("R4".to_string(), 4);
    symbol_table.insert("R5".to_string(), 5);
    symbol_table.insert("R6".to_string(), 6);
    symbol_table.insert("R7".to_string(), 7);
    symbol_table.insert("R8".to_string(), 8);
    symbol_table.insert("R9".to_string(), 9);
    symbol_table.insert("R10".to_string(), 10);
    symbol_table.insert("R11".to_string(), 11);
    symbol_table.insert("R12".to_string(), 12);
    symbol_table.insert("R13".to_string(), 13);
    symbol_table.insert("R14".to_string(), 14);
    symbol_table.insert("R15".to_string(), 15);
    symbol_table.insert("SCREEN".to_string(), 16384);
    symbol_table.insert("KBD".to_string(), 24576);
    let mut address = 0;
    for line in instructions {
        let trimmed = trim_comment(line).trim();
        if trimmed.is_empty() {
            continue;
        }
        if trimmed.starts_with('(') {
            let label = &trimmed[1..trimmed.len() - 1];
            if !is_valid_label(label) {
                panic!("Invalid label: {}", label);
            }
            if symbol_table.contains_key(label) {
                panic!("Duplicate label: {}", label);
            }
            symbol_table.insert(label.to_string(), address);
        }
        else if trimmed.starts_with('@') && trimmed[1..].chars().next().unwrap().is_alphabetic() {
            address += 2;
        } else {
            address += 1;
        }
    }

    let mut next_ram = 16;
    for line in instructions {
        let trimmed = trim_comment(line).trim();
        if trimmed.is_empty() {
            continue;
        }
        if trimmed.starts_with('(') {
            continue;
        }
        if trimmed.starts_with('@') {
            let label = &trimmed[1..];
            // if label starts with a letter
            if label.chars().next().unwrap().is_alphabetic() {
                if !symbol_table.contains_key(label) {
                    if next_ram > 255 {
                        panic!("RAM address overflow");
                    }
                    symbol_table.insert(label.to_string(), next_ram);
                    next_ram += 1;
                }
            }
            continue;
        }
    }
    symbol_table
}

fn is_valid_label(label: &str) -> bool {
    label
        .chars()
        .all(|c| c.is_alphanumeric() || c == ':' || c == '_' || c == '.' || c == '$')
}

fn assemble_line(
    file: &String,
    line: usize,
    source: &str,
    labels: &HashMap<String, u16>,
) -> Option<Vec<Instruction>> {
    let trimmed = trim_comment(source).trim();
    if trimmed.is_empty() {
        return None;
    }
    if trimmed.starts_with('(') {
        return None;
    }
    Some(assemble_instruction(trimmed, labels).iter().map(|op| Instruction {
        op: *op,
        str: trimmed.to_string(),
        source: source.to_string(),
        file: file.to_string(),
        line: line,
    }).collect())
}

fn assemble_instruction(instruction: &str, labels: &HashMap<String, u16>) -> Vec<u16> {
    if instruction.starts_with('@') {
        assemble_immediate(instruction, labels)
    } else {
        vec![assemble_computation(instruction)]
    }
}

fn trim_comment(instruction: &str) -> &str {
    match instruction.find("//") {
        Some(index) => &instruction[..index],
        None => instruction,
    }
}

fn assemble_immediate(instruction: &str, labels: &HashMap<String, u16>) -> Vec<u16> {
    if labels.contains_key(&instruction[1..]) {
        let label_value = *labels.get(&instruction[1..]).unwrap();
        
        if !is_op_immediate(label_value) {
            return vec![!label_value, 0b1110_1100_0110_0000]
        }
        return vec![0b1110_1010_0000_0000, label_value]
    }

    match instruction[1..].parse::<u16>() {
        Ok(value) => {
            if !is_op_immediate(value) {
                panic!("Immediate value must be between 0-32767: {}", instruction);
            } else {
                vec![value]
            }
        }
        Err(_) => {
            panic!("Invalid immediate value: {}", instruction);
        }
    }
}

fn assemble_computation(instruction: &str) -> u16 {
    let mut result = 0b1110_0000_0000_0000;

    let mut compute = instruction;
    if instruction.contains('=') {
        let parts: Vec<&str> = instruction.split('=').collect();
        result |= dest(parts[0]);
        compute = parts[1];
    }

    if compute.contains(';') {
        let parts: Vec<&str> = compute.split(';').collect();
        result |= jump(parts[1]);
        compute = parts[0];
    }

    result |= comp(compute);
    result
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

fn jump(value: &str) -> u16 {
    match value {
        "JGT" => 0b0000_0000_0000_0001,
        "JEQ" => 0b0000_0000_0000_0010,
        "JGE" => 0b0000_0000_0000_0011,
        "JLT" => 0b0000_0000_0000_0100,
        "JNE" => 0b0000_0000_0000_0101,
        "JLE" => 0b0000_0000_0000_0110,
        "JMP" => 0b0000_0000_0000_0111,
        _ => panic!("Invalid jump: {}", value),
    }
}

fn comp(value: &str) -> u16 {
    match value {
        "0" => 0b0000_1010_0000_0000,
        "1" => 0b0000_1111_1100_0000,
        "-1" => 0b0000_1110_1000_0000,
        "D" => 0b0000_0011_0000_0000,
        "A" => 0b0000_1100_0000_0000,
        "M" => 0b0001_1100_0000_0000,
        "!D" => 0b0000_0111_0000_0000,
        "!A" => 0b0000_1100_0100_0000,
        "!M" => 0b0001_1100_0100_0000,
        "-D" => 0b0000_0011_1100_0000,
        "-A" => 0b0000_1100_1100_0000,
        "-M" => 0b0001_1100_1100_0000,
        "D+1" => 0b0000_0111_1100_0000,
        "A+1" => 0b0000_1101_1100_0000,
        "M+1" => 0b0001_1101_1100_0000,
        "D-1" => 0b0000_0011_1000_0000,
        "A-1" => 0b0000_1100_1000_0000,
        "M-1" => 0b0001_1100_1000_0000,
        "D+A" => 0b0000_0000_1000_0000,
        "D+M" => 0b0001_0000_1000_0000,
        "D-A" => 0b0000_0100_1100_0000,
        "D-M" => 0b0001_0100_1100_0000,
        "A-D" => 0b0000_0001_1100_0000,
        "M-D" => 0b0001_0001_1100_0000,
        "D&A" => 0b0000_0000_0000_0000,
        "D&M" => 0b0001_0000_0000_0000,
        "D|A" => 0b0000_0101_0100_0000,
        "D|M" => 0b0001_0101_0100_0000,
        _ => panic!("Invalid computation: {}", value),
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_assemble_immediate() {
        assert_eq!(
            assemble_instruction("@0", &HashMap::new()),
            vec![0b0000_0000_0000_0000]
        );
        assert_eq!(
            assemble_instruction("@1", &HashMap::new()),
            vec![0b0000_0000_0000_0001]
        );
        assert_eq!(
            assemble_instruction("@2", &HashMap::new()),
            vec![0b0000_0000_0000_0010]
        );
        assert_eq!(
            assemble_instruction("@32767", &HashMap::new()),
            vec![0b0111_1111_1111_1111]
        );
    }

    #[test]
    fn test_assemble_computation() {
        assert_eq!(
            assemble_instruction("D=A", &HashMap::new()),
            vec![0b1110_1100_0001_0000]
        );
        assert_eq!(
            assemble_instruction("D=D+A", &HashMap::new()),
            vec![0b1110_0000_1001_0000]
        );
        assert_eq!(
            assemble_instruction("M=D", &HashMap::new()),
            vec![0b1110_0011_0000_1000]
        );
        assert_eq!(
            assemble_instruction("M=!D", &HashMap::new()),
            vec![0b1110_0111_0000_1000]
        );
        assert_eq!(
            assemble_instruction("0;JMP", &HashMap::new()),
            vec![0b1110_1010_0000_0111]
        );
    }

    #[test]
    #[should_panic(expected = "Immediate value must be between 0-32767: @32768")]
    fn test_assemble_immediate_overflow() {
        assemble_instruction("@32768", &HashMap::new());
    }

    #[test]
    #[should_panic(expected = "Invalid immediate value: @asdf")]
    fn test_assemble_invalid_immediate() {
        assemble_instruction("@asdf", &HashMap::new());
    }
}
