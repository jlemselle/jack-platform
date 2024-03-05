use jack_platform::{
    assemble_file,
    common::*,
    runtime::execute_to_end,
    services::{debugger::DebuggerService, logger::LoggerService},
};

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let file = args.get(1).map_or("prog/simple.asm", |v| v.as_str());
    let instructions = assemble_file(file);
    execute_to_end(
        instructions,
        &mut ExecutionConfig {
            services: vec![Box::new(LoggerService::default()), Box::new(DebuggerService::default())],
            ..ExecutionConfig::default()
        },
    );
}
