use jack_platform::{
    assemble_file, common::*, runtime::execute_to_end, services::output::output_result,
};

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let file = args.get(1).map_or("prog/hello.asm", |v| v.as_str());
    let instructions = assemble_file(file);
    execute_to_end(
        instructions,
        ExecutionConfig {
            services: vec![output_result],
            ..ExecutionConfig::default()
        },
    );
}
