import { constants } from './constants';
import { executeMain } from './runtime';
import { VirtualMachine } from './virtual-machine';

describe('pop', () => {
  let vm: VirtualMachine;

  beforeEach(() => {
    vm = new VirtualMachine();
  });

  it('should pop local', () => {
    vm.initPointer(constants.LCL, 300);
    executeMain(['push constant 17', 'pop local 0'], vm);
    expect(vm.stack).toEqual([]);
    expect(vm.pointerGet(constants.LCL, 0)).toEqual(17);
  });

  it('should pop argument', () => {
    vm.initPointer(constants.ARG, 400);
    executeMain(['push constant 17', 'pop argument 0'], vm);
    expect(vm.stack).toEqual([]);
    expect(vm.pointerGet(constants.ARG, 0)).toEqual(17);
  });

  it('should pop this', () => {
    vm.initPointer(constants.THIS, 500);
    executeMain(['push constant 17', 'pop this 0'], vm);
    expect(vm.stack).toEqual([]);
    expect(vm.pointerGet(constants.THIS, 0)).toEqual(17);
  });

  it('should pop that', () => {
    vm.initPointer(constants.THAT, 600);
    executeMain(['push constant 17', 'pop that 0'], vm);
    expect(vm.stack).toEqual([]);
    expect(vm.pointerGet(constants.THAT, 0)).toEqual(17);
  });

  it('should pop static', () => {
    vm.setFileName('Main');
    executeMain(['push constant 17', 'pop static 0'], vm);
    expect(vm.stack).toEqual([]);
    expect(vm.staticGet(0)).toEqual(17);
  });

  it('should pop temp', () => {
    executeMain(['push constant 17', 'pop temp 0'], vm);
    expect(vm.stack).toEqual([]);
    expect(vm.offsetGet(constants.TEMP, 0)).toEqual(17);
  });

  it('should pop pointer', () => {
    executeMain(['push constant 17', 'pop pointer 0'], vm);
    expect(vm.stack).toEqual([]);
    expect(vm.offsetGet(constants.PTR, 0)).toEqual(17);
  });
});
