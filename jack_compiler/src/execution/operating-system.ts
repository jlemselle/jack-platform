import { readFileSync, readdirSync } from "fs";
import * as path from "path";
import { compile } from "./compile";

let os: string[] = [];
export function cachedOperatingSystem() {
  if (os.length === 0) {
    os = operatingSystem();
  }
  return os;
}

export function operatingSystem(): string[] {
  const osFolder = "packages/hack-assembler/src/operating-system";
  return readdirSync(osFolder)
    .filter((file) => path.extname(file) === ".jack")
    .flatMap((file) => compileStandardLibrary(path.basename(file, ".jack")));
}

export function compileStandardLibrary(moduleName: string): string[] {
  const osFolder = "packages/hack-assembler/src/operating-system";
  return compile(
    moduleName,
    readFileSync(path.join(osFolder, `${moduleName}.jack`), "utf-8")
  );
}
