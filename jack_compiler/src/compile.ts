import * as fs from "fs";
import * as path from "path";
import { compileToIlFull } from "./execution/compile";

function main() {
  const args = process.argv.slice(2);

  if (args.length !== 1) {
    console.error("Usage: npm run compile ./example");
    process.exit(1);
  }

  fs.readdir(args[0], (err, files) => {
    if (err) {
      console.error("Error reading directory:", err);
      return;
    }

    // Filter the files that match the file extension
    const vmFiles = files.filter((file) => path.extname(file) === ".jack");
    const tsFile = path.join("dist", path.parse(args[0]).name + ".compiled.ts");

    const results: { fileName: string; source: string[] }[] = [];

    vmFiles.forEach((fileName) => {
      const inputFile = path.join(args[0], fileName);
      const outputFile = path.join("dist", path.parse(fileName).name + ".vm");
      const tokensFile = path.join(
        "dist",
        path.parse(fileName).name + ".tokens.json"
      );
      const astFile = path.join(
        "dist",
        path.parse(fileName).name + ".ast.json"
      );
      try {
        const jackCode = fs.readFileSync(inputFile, "utf-8");
        //const baseFileName = path.basename(inputFile);
        const vmCode = compileToIlFull(jackCode);

        // Create the "dist" folder if it doesn't exist
        if (!fs.existsSync("dist")) {
          fs.mkdirSync("dist");
        }

        fs.writeFileSync(outputFile, vmCode.il.join("\n"));
        fs.writeFileSync(tokensFile, JSON.stringify(vmCode.tokens, null, 2));
        fs.writeFileSync(astFile, JSON.stringify(vmCode.ast, null, 2));
        results.push({
          fileName: path.parse(fileName).name,
          source: vmCode.il,
        });
        console.log(`Successfully compiled ${fileName}`);
      } catch (err) {
        console.error("Error compiling:", err);
        process.exit(1);
      }
    });

    fs.writeFileSync(
      tsFile,
      `export const ${path.parse(args[0]).name} = ` +
        JSON.stringify(results, null, 2) +
        ";"
    );
  });
}

main();
