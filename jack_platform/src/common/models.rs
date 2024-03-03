pub struct Instruction {
    pub op: u16,
    pub str: String,
    pub source: String,
    pub file: String,
    pub line: usize,
}

pub struct ExecutionContext {
    pub a: i16,
    pub d: i16,
    pub memory: Vec<i16>,
    pub pc: usize,
    pub cycle: usize,
}

pub const RAM_SIZE: usize = 32_768;

impl ExecutionContext {
    pub fn new() -> Self {
        ExecutionContext {
            a: 0,
            d: 0,
            memory: vec![0; RAM_SIZE],
            pc: 0,
            cycle: 0,
        }
    }
}

pub struct AluResult {
    pub out: i16,
    pub write_a: bool,
    pub write_m: bool,
    pub write_d: bool,
    pub write_pc: bool,
}

pub trait ExecutionService {
    fn tick(
        &mut self,
        instruction: &Instruction,
        context: &ExecutionContext,
        alu: &AluResult,
    ) -> ();
}

pub struct ExecutionConfig {
    pub services: Vec<Box<dyn ExecutionService>>,
}

impl ExecutionConfig {
    pub fn default() -> Self {
        ExecutionConfig { services: vec![] }
    }
}
