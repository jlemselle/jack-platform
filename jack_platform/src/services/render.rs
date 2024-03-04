use crate::common::*;
use minifb::{Key, Window, WindowOptions};
use std::time::Instant;
use std::time::Duration;

const WIDTH: usize = 512;
const HEIGHT: usize = 256;
const TARGET_FRAME_TIME: Duration = Duration::from_millis(16);

pub struct RenderService {
    window: Window,
    buffer: Vec<u32>,
    last_frame_start: Instant,
}

impl RenderService {
    pub fn default() -> RenderService {
        RenderService {
            window: Window::new("Hack VM", WIDTH, HEIGHT, WindowOptions {
                borderless: false,
                title: true,
                resize: true,
                scale: minifb::Scale::X2,
                scale_mode: minifb::ScaleMode::AspectRatioStretch,
                topmost: false,
                transparency: false,
                none: false,
            }).unwrap(),
            buffer: vec![0; WIDTH * HEIGHT],
            last_frame_start: Instant::now(),
        }
    }
}

impl ExecutionService for RenderService {
    fn tick(&mut self, _instruction: &Instruction, context: &ExecutionContext, _result: &AluResult) -> ExecutionServiceResult {
        let elapsed_time = self.last_frame_start.elapsed();

        if elapsed_time >= TARGET_FRAME_TIME {
            if !self.window.is_open() || self.window.is_key_down(Key::Escape) {
                return ExecutionServiceResult { should_halt: true, key_code: -1 };
            }

            let shift = self.window.is_key_down(Key::LeftShift) || self.window.is_key_down(Key::RightShift);
            let key_code = self.window.get_keys().iter().next().map(|key| to_key_code(*key, shift)).unwrap_or(0);

            for i in 0..(WIDTH * HEIGHT) {
                let memory_value = context.memory[16384 + (i / 16)];
                let pixel_value = (memory_value >> (i % 16)) & 1;

                self.buffer[i] = if pixel_value == 1 {
                    0xFFFF00E6
                } else {
                    0xFF180016
                };
            }

            self.window
                .update_with_buffer(&mut self.buffer, WIDTH, HEIGHT)
                .unwrap();
            self.last_frame_start = Instant::now();

            return ExecutionServiceResult { should_halt: false, key_code };
        }

        ExecutionServiceResult {
            should_halt: false,
            key_code: -1,
        }
    }
}

fn to_key_code(key: Key, shift_modifier: bool) -> i16 {
    match key {
        Key::Space => 32,
        Key::Key0 => if shift_modifier { 41 } else { 48 },
        Key::Key1 => if shift_modifier { 33 } else { 49 },
        Key::Key2 => if shift_modifier { 64 } else { 50 },
        Key::Key3 => if shift_modifier { 35 } else { 51 },
        Key::Key4 => if shift_modifier { 36 } else { 52 },
        Key::Key5 => if shift_modifier { 37 } else { 53 },
        Key::Key6 => if shift_modifier { 94 } else { 54 },
        Key::Key7 => if shift_modifier { 38 } else { 55 },
        Key::Key8 => if shift_modifier { 42 } else { 56 },
        Key::Key9 => if shift_modifier { 40 } else { 57 },
        Key::A => if shift_modifier { 65 } else { 97 },
        Key::B => if shift_modifier { 66 } else { 98 },
        Key::C => if shift_modifier { 67 } else { 99 },
        Key::D => if shift_modifier { 68 } else { 100 },
        Key::E => if shift_modifier { 69 } else { 101 },
        Key::F => if shift_modifier { 70 } else { 102 },
        Key::G => if shift_modifier { 71 } else { 103 },
        Key::H => if shift_modifier { 72 } else { 104 },
        Key::I => if shift_modifier { 73 } else { 105 },
        Key::J => if shift_modifier { 74 } else { 106 },
        Key::K => if shift_modifier { 75 } else { 107 },
        Key::L => if shift_modifier { 76 } else { 108 },
        Key::M => if shift_modifier { 77 } else { 109 },
        Key::N => if shift_modifier { 78 } else { 110 },
        Key::O => if shift_modifier { 79 } else { 111 },
        Key::P => if shift_modifier { 80 } else { 112 },
        Key::Q => if shift_modifier { 81 } else { 113 },
        Key::R => if shift_modifier { 82 } else { 114 },
        Key::S => if shift_modifier { 83 } else { 115 },
        Key::T => if shift_modifier { 84 } else { 116 },
        Key::U => if shift_modifier { 85 } else { 117 },
        Key::V => if shift_modifier { 86 } else { 118 },
        Key::W => if shift_modifier { 87 } else { 119 },
        Key::X => if shift_modifier { 88 } else { 120 },
        Key::Y => if shift_modifier { 89 } else { 121 },
        Key::Z => if shift_modifier { 90 } else { 122 },
        Key::Apostrophe => if shift_modifier { 34 } else { 39 },
        Key::Comma => if shift_modifier { 60 } else { 44 },
        Key::Minus => if shift_modifier { 95 } else { 45 },
        Key::Period => if shift_modifier { 62 } else { 46 },
        Key::Slash => if shift_modifier { 63 } else { 47 },
        Key::Semicolon => if shift_modifier { 58 } else { 59 },
        Key::Equal => if shift_modifier { 43 } else { 61 },
        Key::LeftBracket => if shift_modifier { 123 } else { 91 },
        Key::Backslash => if shift_modifier { 124 } else { 92 },
        Key::RightBracket => if shift_modifier { 125 } else { 93 },
        Key::Backquote => if shift_modifier { 126 } else { 96 },
        Key::Tab => 9,
        Key::Enter => 128,
        Key::Backspace => 129,
        Key::Left => 130,
        Key::Up => 131,
        Key::Right => 132,
        Key::Down => 133,
        Key::Escape => 140,
        Key::F1 => 141,
        Key::F2 => 142,
        Key::F3 => 143,
        Key::F4 => 144,
        Key::F5 => 145,
        Key::F6 => 146,
        Key::F7 => 147,
        Key::F8 => 148,
        Key::F9 => 149,
        Key::F10 => 150,
        Key::F11 => 151,
        Key::F12 => 152,
        _ => 0,
    }
}