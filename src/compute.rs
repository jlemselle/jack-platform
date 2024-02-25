use crate::{
    assemble::AssembledInstruction,
    cpu::{cpu, InstructionResult},
    runtime::Runtime,
};

/***
 * The compute function is used to execute a single instruction.
 */
pub fn compute(runtime: &mut Runtime, instruction: &AssembledInstruction, logging: bool) {
    let result = cpu(
        instruction.op,
        runtime.a,
        runtime.d,
        runtime.memory[runtime.a as usize],
    );

    if logging {
        log_result(instruction, &runtime, &result);
    }
    apply_result(runtime, &result);
}

fn log_result(instruction: &AssembledInstruction, runtime: &Runtime, result: &InstructionResult) {
    println!(
        "{}: {} ({:016b}) [A: {}, D: {}, M[{}]: {}]",
        runtime.pc,
        instruction.source,
        instruction.op,
        runtime.a,
        runtime.d,
        runtime.a,
        runtime.memory[runtime.a as usize]
    );

    if result.write_a {
        println!("   A: {} -> {}", runtime.a, result.out);
    }

    if result.write_d {
        println!("   D: {} -> {}", runtime.d, result.out);
    }

    if result.write_m {
        println!(
            "   M[{}]: {} -> {}",
            runtime.a, runtime.memory[runtime.a as usize], result.out
        );
    }

    if result.write_pc {
        println!("   PC: {}", result.out);
    }
}

fn apply_result(runtime: &mut Runtime, result: &InstructionResult) {
    if result.write_a {
        runtime.a = result.out;
    }

    if result.write_d {
        runtime.d = result.out;
    }

    if result.write_m {
        runtime.memory[runtime.a as usize] = result.out;
    }

    if result.write_pc {
        runtime.pc = result.out as usize;
    } else {
        runtime.pc += 1;
    }
}
