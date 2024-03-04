use jack_platform::{assemble_file, common::*, runtime::execute_forever};
use services::render::RenderService;

mod services {
    pub mod render;
}

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let file = args.get(1).map_or("prog/hello.asm", |v| v.as_str());
    let instructions = assemble_file(file);
    execute_forever(
        instructions,
        &mut ExecutionConfig {
            services: vec![Box::new(RenderService::default())],
            ..ExecutionConfig::default()
        },
    );
}
