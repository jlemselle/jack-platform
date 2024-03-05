use std::collections::HashMap;

fn collect_labels(instructions: &Vec<&str>) -> HashMap<String, u16> {

    // loop through all labels and generate a naive index

    // loop through all jumps and add a reference to each label
    // if we have to generate 2 instructions to jump:
        // update all labels with an index **larger** than the index we're currently generating at
        // regenerate that label's existing references
        // if one of the existing references that we regenerated crossed the 15-bit threshold, run the same steps again
    let mut symbol_table = HashMap::new();

    for instruction in instructions.iter().map(|s| s.trim()) {
        if is_label(instruction) {
            let label = &instruction[1..instruction.len() - 1];
            if !symbol_table.contains_key(label) {
                symbol_table.insert(label.to_string(), next_ram);
            }
        } else if is_jump(instruction) {
            let label = &instruction[1..];
            if !symbol_table.contains_key(label) {
                symbol_table.insert(label.to_string(), next_ram);
                next_ram += 1;
            }
        }
    }

    symbol_table
}

fn collect_labels_naive(instructions: &Vec<&str>) -> HashMap<String, u16> {
    let mut symbol_table = HashMap::new();

    for raw_instruction in instructions {
        let instruction = raw_instruction.trim();
        if is_label(instruction) {
            let label = &instruction[1..instruction.len() - 1];
            symbol_table.insert(label.to_string());
        }
    }

    symbol_table
}

fn is_jump(instruction: &str) -> bool {
    instruction.starts_with('@') && instruction[1..].chars().next().unwrap().is_alphabetic()
}

fn is_label(instruction: &str) -> bool {
    instruction.starts_with('(')
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_symbol_resolution_over_15_bit_threshold() {
        let mut program: Vec<&str> = vec!["0"; 32770];
        program[0] = "@LabelBeforeThreshold";
        program[1] = "@LabelAfterThreshold";
        program[32767] = "(LabelBeforeThreshold)";
        program[32769] = "(LabelAfterThreshold)";

        let symbol_table = collect_labels(&program);
        assert_eq!(*symbol_table.get("LabelBeforeThreshold").unwrap(), 32768u16);
        assert_eq!(*symbol_table.get("LabelAfterThreshold").unwrap(), 32769u16);
    }
}
