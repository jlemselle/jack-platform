use jack_platform::common::*;
use web_sys::console::log_1;

pub struct LoggerService {}

impl ExecutionService for LoggerService {
    fn tick(&mut self, instruction: &Instruction, runtime: &ExecutionContext, result: &AluResult) {
        log_result(instruction, runtime, result);
    }
}

pub fn log_result(instruction: &Instruction, runtime: &ExecutionContext, result: &AluResult) {
    log_1(
        &format!(
            "{} {} {}",
            format!("{}:", runtime.cycle),
            format!("{}", instruction.str),
            format!("({:016b})", instruction.op),
        )
        .into(),
    );

    let a = if result.write_a {
        format!("*A: {}*", result.out)
    } else {
        format!("A: {}", runtime.a)
    };

    let d = if result.write_d {
        format!("*D: {}*", result.out)
    } else {
        format!("D: {}", runtime.d)
    };

    let m = if result.write_m {
        format!("*M[{}]: {}*", runtime.a, result.out)
    } else {
        format!(
            "M[{}]: {}",
            runtime.a, runtime.memory[runtime.a as u16 as usize]
        )
    };

    let pc = if result.write_pc {
        format!("*PC: {}*", runtime.a)
    } else {
        format!("PC: {}", runtime.pc)
    };

    log_1(&format!("   [{}, {}, {}, {}]", a, d, m, pc).into());
}
