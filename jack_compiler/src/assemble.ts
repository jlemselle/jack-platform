import * as fs from "fs";
import { assemble } from "./assembler/parser";

function main() {
  const args = process.argv.slice(2);

  if (args.length !== 1) {
    console.error("Usage: npm run assemble example.asm");
    process.exit(1);
  }

  const inputFile = args[0];
  const outputFile = inputFile.replace(/\.asm$/, ".hack");
  const binaryOutputFile = inputFile.replace(/\.asm$/, ".pack");

  try {
    const assemblyCode = fs.readFileSync(inputFile, "utf-8");
    const { instructions } = assemble(assemblyCode.split("\n"));

    const buffer = Buffer.from(
      Uint16Array.from(instructions.map((int16) => int16.value & 0xffff)).buffer
    );
    const hackCode = instructions.map((int16) => int16.toString()).join("\n");
    fs.writeFileSync(outputFile, hackCode);
    fs.writeFileSync(binaryOutputFile, buffer);
    console.log(`Successfully assembled to ${outputFile}`);
  } catch (err) {
    console.error("Error assembling:", err);
    process.exit(1);
  }
}

main();
