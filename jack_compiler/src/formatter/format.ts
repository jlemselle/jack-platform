import { ClassVarDecNode, parseClass } from "../parser/class";
import { InputSource } from "../parser/parse-utils";
import { SubroutineNode } from "../parser/subroutine";
import { tokenize } from "../tokenizer/tokenizer";

export function format(source: string) {
  const result = parseClass()(new InputSource(tokenize(source, false), 0));
  if (result.success) {
    const ast = result.value;
    let output = `class ${ast.name} {`;
    if (ast.varDecs.length > 0) {
      output += "\n";
      output += formatVarDecs(ast.varDecs);
    }
    if (ast.subroutines.length > 0) {
      output += "\n  ";
      output += formatSubroutines(ast.subroutines);
      output += "\n";
    }
    output += `}`;
    return output;
  }
}

console.log(format("class Main { function void main() { } }"));

function formatVarDecs(varDecs: ClassVarDecNode[]): string {
  return "";
}

function formatSubroutines(subroutines: SubroutineNode[]): string {
  return subroutines.map((s) => formatSubroutine(s)).join("\n");
}

function formatSubroutine(subroutine: SubroutineNode): string {
  return `${subroutine.kind} ${subroutine.returnType} ${subroutine.subroutineName}() {}`;
}
