use crate::{
    common::*,
    runtime::{
        alu::{alu, apply_result},
        logging::log_result,
    },
};

pub fn compute(
    runtime: &mut ExecutionContext,
    instruction: &Instruction,
    config: &ExecutionConfig,
) {
    let result = alu(
        instruction.op,
        runtime.a,
        runtime.d,
        runtime.memory[runtime.a as u16 as usize],
    );

    if config.log {
        log_result(instruction, &runtime, &result);
    }

    apply_result(runtime, &result);
}
