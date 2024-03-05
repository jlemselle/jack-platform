import * as fs from "fs";
import * as path from "path";
import { operatingSystem } from "./execution/operating-system";
import { AssemblyContext } from "./intermediate/assembly-context";
import { interpret } from "./intermediate/interpret";
import { init } from "./execution/init";

function main() {
  const args = process.argv.slice(2);

  if (args.length !== 1) {
    console.error("Usage: npm run interpret ./example");
    process.exit(1);
  }

  const outputFile = path.basename(args[0]) + ".asm";

  fs.readdir(args[0], (err, files) => {
    if (err) {
      console.error("Error reading directory:", err);
      return;
    }

    // Filter the files that match the file extension
    const vmFiles = files.filter((file) => path.extname(file) === ".vm");
    const instructions = init();

    vmFiles.forEach((fileName) => {
      const inputFile = path.join(args[0], fileName);
      try {
        const vmCode = fs.readFileSync(inputFile, "utf-8");
        const context = new AssemblyContext(path.basename(inputFile));
        interpret(
          context,
          vmCode.split("\n").filter((x) => x !== "")
        ).forEach((instruction) => instructions.push(instruction));

        console.log(`Successfully interpreted ${inputFile}`);
      } catch (err) {
        console.error("Error interpreting:", err);
        process.exit(1);
      }
      fs.writeFileSync(outputFile, instructions.join("\n"));
    });
  });
}

main();
