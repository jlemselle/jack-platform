import { arithmetic } from "./arithmetic";
import { constants } from "./constants";
import { VirtualMachine } from "./virtual-machine";

export type Instruction = {
  command: string;
  segment: string;
  index: number;
  fileName: string;
};

export function parse(
  sources: { fileName: string; source: string[] }[],
  vm: VirtualMachine
): Instruction[] {
  let instructions = [];
  for (const file of sources) {
    for (let i = 0; i < file.source.length; i++) {
      const [command, segment, index] = file.source[i].split(" ");
      switch (command) {
        case "label":
          vm.addLabel(segment, instructions.length);
          break;
        case "function":
          vm.addFunction(segment, instructions.length);
          instructions.push({
            command,
            segment,
            index: +index,
            fileName: file.fileName,
          });
          break;
        default:
          instructions.push({
            command,
            segment,
            index: +index,
            fileName: file.fileName,
          });
          break;
      }
    }
  }
  return instructions;
}

export function execute(
  sources: { fileName: string; source: string[] }[],
  vm: VirtualMachine
) {
  let instructions = parse(sources, vm);
  while (vm.pc < instructions.length) {
    const result = executeLine(instructions[vm.pc], vm);
    if (result.breakRequested) {
      break;
    }
  }
}

export function executeMain(source: string[], vm: VirtualMachine) {
  execute([{ fileName: "Main", source }], vm);
}

export function executeLine(
  source: Instruction,
  vm: VirtualMachine
): { breakRequested: boolean } {
  const { command, segment, index, fileName } = source;
  switch (command) {
    case "push":
      push(segment, +index, fileName, vm);
      vm.incrementPc();
      break;
    case "pop":
      pop(segment, +index, fileName, vm);
      vm.incrementPc();
      break;
    case "goto":
      vm.goto(segment);
      break;
    case "if-goto":
      vm.ifGoto(segment);
      break;
    case "function":
      vm.function(segment, +index);
      vm.incrementPc();
      break;
    case "return":
      vm.return();
      break;
    case "call":
      return vm.call(segment, +index);
    case "add":
    case "sub":
    case "and":
    case "or":
    case "neg":
    case "not":
    case "eq":
    case "gt":
    case "lt":
      arithmetic(command, vm);
      vm.incrementPc();
      break;
    default:
      throw new Error(`Unknown command: ${command}`);
  }

  return { breakRequested: false };
}

function push(
  segment: string,
  index: number,
  fileName: string,
  vm: VirtualMachine
) {
  switch (segment) {
    case "constant":
      vm.push(index);
      break;
    case "local":
      vm.push(vm.pointerGet(constants.LCL, index));
      break;
    case "argument":
      vm.push(vm.pointerGet(constants.ARG, index));
      break;
    case "this":
      vm.push(vm.pointerGet(constants.THIS, index));
      break;
    case "that":
      vm.push(vm.pointerGet(constants.THAT, index));
      break;
    case "static":
      vm.setFileName(fileName);
      vm.push(vm.staticGet(index));
      break;
    case "temp":
      vm.push(vm.offsetGet(constants.TEMP, index));
      break;
    case "pointer":
      vm.push(vm.offsetGet(constants.PTR, index));
      break;
    default:
      throw new Error(`Unknown segment: ${segment}`);
  }
}

function pop(
  segment: string,
  index: number,
  fileName: string,
  vm: VirtualMachine
) {
  switch (segment) {
    case "local":
      vm.pointerSet(constants.LCL, index, vm.pop());
      break;
    case "argument":
      vm.pointerSet(constants.ARG, index, vm.pop());
      break;
    case "this":
      vm.pointerSet(constants.THIS, index, vm.pop());
      break;
    case "that":
      vm.pointerSet(constants.THAT, index, vm.pop());
      break;
    case "static":
      vm.setFileName(fileName);
      vm.staticSet(index, vm.pop());
      break;
    case "temp":
      vm.offsetSet(constants.TEMP, index, vm.pop());
      break;
    case "pointer":
      vm.offsetSet(constants.PTR, index, vm.pop());
      break;
    default:
      break;
  }
}
