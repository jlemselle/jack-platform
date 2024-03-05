use jack_platform::common::*;
use web_sys::console::log_1;

pub struct LoggerService {}

impl LoggerService {
    pub fn default() -> LoggerService {
        LoggerService {}
    }
}

impl ExecutionService for LoggerService {
    fn tick(
        &mut self,
        instruction: &Instruction,
        context: &ExecutionContext,
        result: &AluResult,
    ) -> ExecutionServiceResult {
        log_1(
            &format!(
                "{} {} {}",
                format!("{}:", context.cycle),
                format!("{}", instruction.str),
                format!("({:016b})", instruction.op),
            )
            .into(),
        );

        let a = if result.write_a {
            format!("*A: {}*", result.out)
        } else {
            format!("A: {}", context.a)
        };

        let d = if result.write_d {
            format!("*D: {}*", result.out)
        } else {
            format!("D: {}", context.d)
        };

        let m = if result.write_m {
            format!("*M[{}]: {}*", context.a, result.out)
        } else {
            format!(
                "M[{}]: {}",
                context.a, context.memory[context.a as u16 as usize]
            )
        };

        let pc = if result.write_pc {
            format!("*PC: {}*", context.a)
        } else {
            format!("PC: {}", context.pc)
        };

        log_1(&format!("   [{}, {}, {}, {}]", a, d, m, pc).into());

        ExecutionServiceResult::new()
    }
}
