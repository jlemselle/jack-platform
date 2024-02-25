/**
 * Runtime module
 * This module contains the implementation of the runtime, which is responsible for managing the state of the CPU and memory.
 */

pub const RAM_SIZE: usize = 32_768;

pub struct Runtime {
    pub a: i16,
    pub d: i16,
    pub memory: Vec<i16>,
    pub pc: usize,
}

pub fn new_runtime() -> Runtime {
    Runtime {
        a: 0,
        d: 0,
        memory: vec![0; RAM_SIZE],
        pc: 0,
    }
}
