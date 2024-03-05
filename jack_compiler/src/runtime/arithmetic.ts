import { VirtualMachine } from './virtual-machine';

export function arithmetic(command: string, vm: VirtualMachine) {
  switch (command) {
    case 'add':
      vm.push(vm.pop() + vm.pop());
      break;
    case 'sub':
      const b = vm.pop();
      const a = vm.pop();
      vm.push(a - b);
      break;
    case 'and':
      vm.push(vm.pop() & vm.pop());
      break;
    case 'or':
      vm.push(vm.pop() | vm.pop());
      break;
    case 'neg':
      vm.push(-vm.pop());
      break;
    case 'not':
      vm.push(~vm.pop());
      break;
    case 'eq':
      vm.push(vm.pop() === vm.pop() ? -1 : 0);
      break;
    case 'gt':
      vm.push(vm.pop() < vm.pop() ? -1 : 0);
      break;
    case 'lt':
      vm.push(vm.pop() > vm.pop() ? -1 : 0);
      break;
    default:
      throw new Error(`Unknown arithmetic command: ${command}`);
  }
}
