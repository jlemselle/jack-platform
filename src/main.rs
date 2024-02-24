mod alu;
use crate::alu::{alu, AluOutput};
use rand::{thread_rng, Rng, RngCore};

fn alu_instruction(x: i16, y: i16) -> AluOutput {
    let zx = thread_rng().next_u32() % 2 == 0;
    let nx = thread_rng().next_u32() % 2 == 0;
    let zy = thread_rng().next_u32() % 2 == 0;
    let ny = thread_rng().next_u32() % 2 == 0;
    let f = thread_rng().next_u32() % 2 == 0;
    let no = thread_rng().next_u32() % 2 == 0;

    alu(x, y, zx, nx, zy, ny, f, no)
}

fn main() {
    let mut rng = thread_rng();
    let iterations = 100_000;
    let start_time = std::time::Instant::now();

    for _ in 0..iterations {
        let x = rng.gen_range(-32768..32767);
        let y = rng.gen_range(-32768..32767);
        _ = alu_instruction(x, y); // Discard the result, only measure execution time
    }

    let elapsed_time = start_time.elapsed();
    let instructions_per_second = iterations as f64 / elapsed_time.as_secs_f64();

    println!(
        "Executed {} ALU instructions in {:.2?} seconds.",
        iterations, elapsed_time
    );
    println!(
        "Performance: {:.2?} instructions per second.",
        instructions_per_second
    );
}
