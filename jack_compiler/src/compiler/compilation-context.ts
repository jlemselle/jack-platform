import { ClassNode } from "../parser/class";
import { SubroutineNode } from "../parser/subroutine";

export type SymbolKind = "argument" | "local" | "static" | "this";

export interface Symbol {
  kind: SymbolKind;
  name: string;
  type: string;
  index: number;
}

export class SymbolTable {
  symbols: Symbol[] = [];

  constructor(private kind: SymbolKind) {}

  define(name: string, type: string) {
    this.symbols.push({
      kind: this.kind,
      name,
      type,
      index: this.symbols.length,
    });
  }

  clear() {
    this.symbols = [];
  }

  lookup(name: string): Symbol | undefined {
    return this.symbols.find((x) => x.name === name);
  }

  count(): number {
    return this.symbols.length;
  }
}

export class CompilationContext {
  private uniqueIdentifierValue = 0;
  activeClassName?: string;

  locals: SymbolTable = new SymbolTable("local");
  arguments: SymbolTable = new SymbolTable("argument");
  statics: SymbolTable = new SymbolTable("static");
  fields: SymbolTable = new SymbolTable("this");

  constructor() {}

  private newGuid(): number {
    return this.uniqueIdentifierValue++;
  }

  uniqueLabel(label: string): string {
    return `${this.activeClassName}::${label}::${this.newGuid()}`;
  }

  setClass(node: ClassNode) {
    this.activeClassName = node.name;

    node.varDecs
      .filter((x) => x.kind === "static")
      .forEach((staticVariable) => {
        this.statics.define(staticVariable.name, staticVariable.varType);
      });

    node.varDecs
      .filter((x) => x.kind === "field")
      .forEach((field) => {
        this.fields.define(field.name, field.varType);
      });
  }

  clearClass() {
    this.locals.clear();
    this.arguments.clear();
    this.statics.clear();
    this.fields.clear();
  }

  setSubroutine(node: SubroutineNode) {
    if (this.activeClassName && node.kind === "method") {
      this.arguments.define("this", this.activeClassName);
    }

    node.parameterList.forEach((parameter) => {
      this.arguments.define(parameter.parameterName, parameter.parameterType);
    });

    node.varDecList.forEach((varDec) => {
      this.locals.define(varDec.name, varDec.varType);
    });
  }

  clearSubroutine() {
    this.locals.clear();
    this.arguments.clear();
  }

  resolve(name: string): Symbol {
    const argumentVariable = this.arguments.lookup(name);
    if (argumentVariable) {
      return argumentVariable;
    }

    const localVariable = this.locals.lookup(name);
    if (localVariable) {
      return localVariable;
    }

    const staticVariable = this.statics.lookup(name);
    if (staticVariable) {
      return staticVariable;
    }

    const fieldVariable = this.fields.lookup(name);
    if (fieldVariable) {
      return fieldVariable;
    }

    throw new Error(`Variable not found: ${name}`);
  }
}
