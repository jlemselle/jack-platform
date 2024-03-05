import { Int16 } from "../core";
import { trimComment } from "../core/parse";
import { parseCompute } from "./compute";
import { parseDest } from "./dest";
import { encodeCompute, encodeLoad } from "./encoder";
import { parseJump } from "./jump";
import { SymbolTable, initSymbols } from "./symbol-reader";

export function assembleLine(command: string, symbolTable: SymbolTable): Int16 {
  if (command.startsWith("@")) {
    const symbol = lookupSymbol(command.substring(1), symbolTable);
    return encodeLoad(symbol);
  }

  const { dest, compute, jump } = splitCInstruction(command);
  return encodeCompute(parseCompute(compute), parseDest(dest), parseJump(jump));
}

export function lookupSymbol(
  symbolName: string,
  symbolTable: SymbolTable
): number {
  if (!isNaN(+symbolName)) {
    return +symbolName;
  } else {
    if (symbolTable[symbolName] === undefined) {
      if (symbolName.startsWith("static")) {
        symbolTable[symbolName] = symbolTable.nextRam++;
      } else {
        throw new Error(`Symbol not found '${symbolName}'`);
      }
    }
    return symbolTable[symbolName];
  }
}

export function splitCInstruction(command: string): {
  dest?: string;
  compute: string;
  jump?: string;
} {
  let compute;
  let dest = undefined;
  let jump = undefined;

  if (command.includes("=")) {
    dest = command.substring(0, command.indexOf("="));
    compute = command.substring(command.indexOf("=") + 1);
  } else {
    compute = command;
  }

  if (compute.includes(";")) {
    compute = command.substring(0, command.indexOf(";"));
    jump = command.substring(command.indexOf(";") + 1);
  }

  return {
    dest,
    compute,
    jump,
  };
}

export function assemble(assembly: string[]): {
  instructions: Int16[];
  sources: string[];
} {
  const symbolTable = initSymbols();

  let instructionSources = [];
  for (let source of assembly) {
    const command = trimComment(source);
    if (command === "") {
      continue;
    }

    // handle labels
    if (command.startsWith("(")) {
      const symbolName = command.substring(1, command.length - 1);
      symbolTable[symbolName] = instructionSources.length;
      continue;
    }

    instructionSources.push({ command, source });
  }

  return {
    instructions: instructionSources.map((x) =>
      assembleLine(x.command, symbolTable)
    ),
    sources: instructionSources.map((x) => x.source),
  };
}
