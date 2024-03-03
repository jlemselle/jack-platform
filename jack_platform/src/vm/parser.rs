use core::panic;

pub fn parse_vm_command(file: &str, command: &str) -> Vec<String> {
    let parts: Vec<&str> = command.split_whitespace().collect();

    match parts[0] {
        "push" => parse_push(file, parts[1], parts[2].parse().unwrap()),
        _ => vec![],
    }
}

fn parse_push(file: &str, segment: &str, index: usize) -> Vec<String> {
    match segment {
        "constant" => push_constant(index),
        "local" => push_pointer("LCL", index),
        "argument" => push_pointer("ARG", index),
        "this" => push_pointer("THIS", index),
        "that" => push_pointer("THAT", index),
        "static" => push_static(index, file),
        "temp" => push_offset(5, index),
        "pointer" => push_offset(3, index),
        _ => panic!("Unknown segment {}", segment),
    }
}

fn push_constant(index: usize) -> Vec<String> {
    vec![
        format!("@{}", index),
        "D=A".to_string(),
        "@SP".to_string(),
        "A=M".to_string(),
        "M=D".to_string(),
        "@SP".to_string(),
        "M=M+1".to_string(),
    ]
}

fn push_offset(segment: usize, index: usize) -> Vec<String> {
    vec![
        format!("@{}", segment + index),
        "D=M".to_string(),
        "@SP".to_string(),
        "A=M".to_string(),
        "M=D".to_string(),
        "@SP".to_string(),
        "M=M+1".to_string(),
    ]
}

fn push_pointer(segment: &str, index: usize) -> Vec<String> {
    if index == 0 {
        return vec![
            format!("@{}", segment),
            "A=M".to_string(),
            "D=M".to_string(),
            "@SP".to_string(),
            "A=M".to_string(),
            "M=D".to_string(),
            "@SP".to_string(),
            "M=M+1".to_string(),
        ];
    }

    vec![
        format!("@{}", segment),
        "D=M".to_string(),
        format!("@{}", index),
        "A=D+A".to_string(),
        "D=M".to_string(),
        "@SP".to_string(),
        "A=M".to_string(),
        "M=D".to_string(),
        "@SP".to_string(),
        "M=M+1".to_string(),
    ]
}

fn push_static(index: usize, filename: &str) -> Vec<String> {
    vec![
        format!("@static.{}.{}", filename, index),
        "D=M".to_string(),
        "@SP".to_string(),
        "A=M".to_string(),
        "M=D".to_string(),
        "@SP".to_string(),
        "M=M+1".to_string(),
    ]
}

#[cfg(test)]
mod tests {

    use super::*;

    #[test]
    fn test_parse_push() {
        assert_eq!(
            parse_vm_command("testfile", "push constant 12"),
            vec!["@12", "D=A", "@SP", "A=M", "M=D", "@SP", "M=M+1"],
        );

        assert_eq!(
            parse_vm_command("testfile", "push local 0"),
            vec!["@LCL", "A=M", "D=M", "@SP", "A=M", "M=D", "@SP", "M=M+1"],
        );

        assert_eq!(
            parse_vm_command("testfile", "push argument 1"),
            vec!["@ARG", "D=M", "@1", "A=D+A", "D=M", "@SP", "A=M", "M=D", "@SP", "M=M+1"],
        );

        assert_eq!(
            parse_vm_command("testfile", "push temp 0"),
            vec!["@5", "D=M", "@SP", "A=M", "M=D", "@SP", "M=M+1"],
        );

        assert_eq!(
            parse_vm_command("testfile", "push static 1"),
            vec![
                "@static.testfile.1",
                "D=M",
                "@SP",
                "A=M",
                "M=D",
                "@SP",
                "M=M+1"
            ],
        );
    }
}
