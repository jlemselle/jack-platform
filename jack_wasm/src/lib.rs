use jack_platform::{assembler::assemble, common::ExecutionConfig, runtime::execute_to_end};
use services::logger::LoggerService;
use wasm_bindgen::prelude::*;

mod services {
    pub mod logger;
}

#[wasm_bindgen]
pub fn execute(source: &str) {
    let instructions = assemble("wasm-file".to_string(), source.lines().collect());
    execute_to_end(
        instructions,
        &mut ExecutionConfig {
            services: vec![Box::new(LoggerService {})],
            ..ExecutionConfig::default()
        },
    );
}
