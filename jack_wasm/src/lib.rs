use jack_platform::{assembler::assemble, common::ExecutionConfig, runtime::execute_to_end};
use wasm_bindgen::prelude::*;
use web_sys::console::log_1;

#[wasm_bindgen]
pub fn execute(source: &str) {
    let instructions = assemble("wasm-file".to_string(), source.lines().collect());
    let result = execute_to_end(
        instructions,
        ExecutionConfig {
            log: false,
            interactive: false,
        },
    );
    log_1(&format!("a: {} d: {} cycles: {}", result.a, result.d, result.cycle).into());
}
