use crate::common::*;
use minifb::{Key, Window, WindowOptions};

const WIDTH: usize = 512;
const HEIGHT: usize = 256;

pub struct RenderService {
    window: Window,
    buffer: Vec<u32>,
}

impl RenderService {
    pub fn default() -> RenderService {
        RenderService {
            window: Window::new("Pixel Renderer", WIDTH, HEIGHT, WindowOptions::default()).unwrap(),
            buffer: vec![0; WIDTH * HEIGHT],
        }
    }
}

impl ExecutionService for RenderService {
    fn tick(&mut self, instruction: &Instruction, runtime: &ExecutionContext, result: &AluResult) {
        if runtime.cycle % 10000 == 0 {
            // Convert u16 pixel data to u32 (assuming black and white)
            for i in 0..(WIDTH * HEIGHT) {
                let memory_value = runtime.memory[16384 + (i / 16)];
                let pixel_value = (memory_value >> (i % 16)) & 1;

                self.buffer[i] = if pixel_value == 1 {
                    0xFF000000
                } else {
                    0xFFFFFFFF
                }; // Black or white
            }

            self.window
                .update_with_buffer(&mut self.buffer, WIDTH, HEIGHT)
                .unwrap();
        }
    }
}
