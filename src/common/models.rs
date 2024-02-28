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

pub const RAM_SIZE: usize = 65_536;

pub fn new_execution_context() -> ExecutionContext {
    ExecutionContext {
        a: 0,
        d: 0,
        memory: vec![0; RAM_SIZE],
        pc: 0,
        cycle: 0,
    }
}

pub struct ExecutionConfig {
    pub log: bool,
    pub interactive: bool,
}
