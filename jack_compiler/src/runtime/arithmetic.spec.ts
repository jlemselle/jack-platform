import { executeMain } from './runtime';
import { VirtualMachine } from './virtual-machine';

describe('arithmetic', () => {
  let vm: VirtualMachine;

  beforeEach(() => {
    vm = new VirtualMachine();
  });

  it('should add', () => {
    executeMain(['push constant 17', 'push constant 18', 'add'], vm);

    expect(vm.stack).toEqual([17 + 18]);
  });

  it('should sub', () => {
    executeMain(['push constant 11', 'push constant 5', 'sub'], vm);

    expect(vm.stack).toEqual([6]);
  });

  it('should and', () => {
    executeMain(['push constant 3', 'push constant 1', 'and'], vm);

    expect(vm.stack).toEqual([1]);
  });

  it('should or', () => {
    executeMain(['push constant 2', 'push constant 1', 'or'], vm);

    expect(vm.stack).toEqual([3]);
  });

  it('should neg', () => {
    executeMain(['push constant 2', 'neg'], vm);

    expect(vm.stack).toEqual([65534]);
  });

  it('should not', () => {
    executeMain(['push constant 0', 'not'], vm);

    expect(vm.stack).toEqual([65535]);
  });

  it('should eq', () => {
    executeMain(['push constant 12', 'push constant 12', 'eq'], vm);

    expect(vm.stack).toEqual([65535]);
  });

  it('should gt', () => {
    executeMain(['push constant 13', 'push constant 12', 'gt'], vm);

    expect(vm.stack).toEqual([65535]);
  });

  it('should lt', () => {
    executeMain(['push constant 12', 'push constant 13', 'lt'], vm);

    expect(vm.stack).toEqual([65535 /* -1 in 2s compliment */]);
  });
});
