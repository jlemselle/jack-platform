import { Int16, Memory, Register, i16 } from "./core";
import { RAM_SIZE, tick } from "./platform/platform";

import * as fs from "fs";

function main() {
  const args = process.argv.slice(2);

  if (args.length !== 1) {
    console.error("Usage: npm run execute input.pack");
    process.exit(1);
  }

  const inputFile = args[0];

  const int16Array = readInt16ArrayFromFile(inputFile);
  execute(int16Array);
}

main();

function readInt16ArrayFromFile(filePath: string): Int16[] {
  try {
    // Read the file content as a buffer
    const buffer = fs.readFileSync(filePath);

    // Initialize an array to store Int16 instances
    const int16Array: Int16[] = [];

    // Iterate through the buffer and extract 16-bit integers
    for (let i = 0; i < buffer.length; i += 2) {
      // Combine two bytes to create a 16-bit integer
      const value = (buffer[i + 1] << 8) | buffer[i];
      // Create an Int16 instance and push it to the array
      int16Array.push(i16(value));
    }

    return int16Array;
  } catch (err) {
    console.error("Error reading file:", err);
    return [];
  }
}

export function execute(instructions: Int16[]) {
  const a = new Register();
  const d = new Register();
  const pc = new Register();
  const ram = Memory.empty(RAM_SIZE);

  const rom = Memory.fromArray(instructions);

  // open file output.txt
  const file = fs.createWriteStream("ts-output.txt");

  while (rom.withinRange(pc.read())) {
    const op = rom.read(pc.read());
    const { result, halt } = tick(a, d, pc, ram, rom);
    if (halt) {
      break;
    }
    file.write(
      `OP ${op.toString()} ALU ${result.toString()} A ${a
        .read()
        .toString()} D ${d.read().toString()} PC ${pc.read().toString()} M ${ram
        .read(a.read())
        .toString()}\n`
    );
  }

  file.close();
}
