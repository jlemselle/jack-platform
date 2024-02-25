pub struct Instruction {
    pub op: u16,
    pub source: String,
}

pub struct ExecutionContext {
    pub a: i16,
    pub d: i16,
    pub memory: Vec<i16>,
    pub pc: usize,
}

pub const RAM_SIZE: usize = 32_768;

pub fn new_execution_context() -> ExecutionContext {
    ExecutionContext {
        a: 0,
        d: 0,
        memory: vec![0; RAM_SIZE],
        pc: 0,
    }
}

pub struct ExecutionConfig {
    pub log: bool,
}
