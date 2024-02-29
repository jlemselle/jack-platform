use jack_platform::{assembler::assemble, common::ExecutionConfig, runtime::execute_to_end};
use wasm_bindgen::prelude::*;

mod logger;

#[wasm_bindgen]
pub fn execute(source: &str) {
    let instructions = assemble("wasm-file".to_string(), source.lines().collect());
    execute_to_end(
        instructions,
        ExecutionConfig {
            services: vec![logger::log_result],
            ..ExecutionConfig::default()
        },
    );
}
