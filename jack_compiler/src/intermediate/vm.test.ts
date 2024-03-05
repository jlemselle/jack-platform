describe("vm", () => {
  it("should push constant", () => {
    const { stack } = execute(["push constant 17"]);
    expect(stack).toEqual([17]);
  });

  it("should add", () => {
    const { stack } = execute(["push constant 17", "push constant 2", "add"]);
    expect(stack).toEqual([19]);
  });
});

function execute(commands: string[]) {
  let stack: number[] = [];
  commands.forEach((command) => {
    var parts = command.split(" ");
    switch (parts[0]) {
      case "push":
        executePush(stack, parts[1], +parts[2]);
        break;
      case "add":
        const a = stack.pop()!;
        const b = stack.pop()!;
        stack.push(a + b);
        break;
      default:
        throw new Error(`Unknown command ${parts[0]}`);
    }
  });
  return { stack };
}

function executePush(stack: number[], segment: string, index: number) {
  switch (segment) {
    case "constant":
      stack.push(index);
      break;
    default:
      throw new Error(`Unknown segment ${segment}`);
  }
}
