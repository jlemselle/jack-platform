export class AssemblyContext {
  private uniqueIdentifierValue = 0;
  subroutineName: string = "";

  constructor(public fileName: string) {}

  private newGuid(): number {
    return this.uniqueIdentifierValue++;
  }

  uniqueLabel(label: string): string {
    return `${this.fileName}::${label}::${this.newGuid()}`;
  }

  setSubroutine(name: string) {
    this.subroutineName = name;
  }
}
