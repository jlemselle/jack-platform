import { executeMain } from './runtime';
import { VirtualMachine } from './virtual-machine';

describe('control flow', () => {
  let vm: VirtualMachine;

  beforeEach(() => {
    vm = new VirtualMachine();
  });

  it('should goto', () => {
    executeMain(
      ['goto xxx', 'push constant 5', 'label xxx', 'push constant 17'],
      vm
    );
    expect(vm.stack).toEqual([17]);
  });

  it('should detect infinite loop', () => {
    executeMain(['label xxx', 'goto xxx'], vm);
    expect(vm.stack).toEqual([]);
  });

  it('should if-goto true', () => {
    executeMain(
      ['push constant 1', 'if-goto end', 'push constant 17', 'label end'],
      vm
    );
    expect(vm.stack).toEqual([]);
  });

  it('should if-goto false', () => {
    executeMain(
      ['push constant 0', 'if-goto end', 'push constant 17', 'label end'],
      vm
    );
    expect(vm.stack).toEqual([17]);
  });
});
