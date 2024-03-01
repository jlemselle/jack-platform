use jack_platform::vm::parser::parse_vm_command;
use std::io::Write;

fn main() {
    // read instructions from arg file
    let file: &str = &std::env::args().nth(1).unwrap();
    let contents = std::fs::read_to_string(file).expect("Could not read file");
    let instructions: Vec<&str> = contents.lines().collect();

    // get just file name portion (no path or extension)
    let filename = file.split('/').last().unwrap().split('.').next().unwrap();

    // parse_vm_command
    let parsed: Vec<Vec<String>> = instructions
        .iter()
        .map(|i| parse_vm_command(&filename, i))
        .collect::<Vec<_>>();

    // write parsed lines to file
    let parsed_file = format!("{}.parsed", file);
    let mut file = std::fs::File::create(parsed_file).expect("Could not create file");
    for p in parsed {
        for l in p {
            writeln!(file, "{}", l).expect("Could not write to file");
        }
    }
}
