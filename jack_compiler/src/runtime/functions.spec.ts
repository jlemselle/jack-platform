import { constants } from './constants';
import { executeMain } from './runtime';
import { VirtualMachine } from './virtual-machine';

describe('functions', () => {
  let vm: VirtualMachine;

  beforeEach(() => {
    vm = new VirtualMachine();
  });

  it('should function', () => {
    const program = [
      'call seven 0',
      'function seven 3',
      'push constant 7',
      'pop local 0',
      'push constant 8',
      'pop local 1',
      'push constant 9',
      'pop local 2',
    ];
    executeMain(program, vm);
    expect(vm.pointerGet(constants.LCL, 0)).toEqual(7);
    expect(vm.pointerGet(constants.LCL, 1)).toEqual(8);
    expect(vm.pointerGet(constants.LCL, 2)).toEqual(9);
  });

  it('should call', () => {
    vm.addFunction('seven', 7);
    vm.initPointer(constants.LCL, 300);
    vm.initPointer(constants.ARG, 400);
    vm.initPointer(constants.THIS, 500);
    vm.initPointer(constants.THAT, 600);
    const program = ['push constant 5', 'push constant 6', 'call seven 2'];
    executeMain(program, vm);
    const [, , returnAddress, local, argument, thatPtr, thisPtr] = vm.stack;
    expect(returnAddress).toEqual(3);
    expect(local).toEqual(300);
    expect(argument).toEqual(400);
    expect(thisPtr).toEqual(500);
    expect(thatPtr).toEqual(600);
    expect(vm.offsetGet(constants.ARG, 0)).toEqual(256);
    expect(vm.offsetGet(constants.LCL, 0)).toEqual(263);
    expect(vm.pointerGet(constants.ARG, 0)).toEqual(5);
    expect(vm.pointerGet(constants.ARG, 1)).toEqual(6);
  });

  it('should return', () => {
    vm.initPointer(constants.LCL, 300);
    vm.initPointer(constants.ARG, 400);
    vm.initPointer(constants.THIS, 500);
    vm.initPointer(constants.THAT, 600);
    const program = [
      'push constant 5',
      'push constant 6',
      'call seven 2',
      'label end',
      'goto end',
      'function seven 0',
      'push constant 7',
      'return',
    ];
    executeMain(program, vm);
  });

  it('should call function', () => {
    const program = [
      'call seven 0',
      'label end',
      'goto end',
      'function seven 0',
      'push constant 7',
      'return',
    ];
    executeMain(program, vm);
    expect(vm.stack).toEqual([7]);
  });

  it('should call nested function', () => {
    const program = [
      'call Main.main 0',
      'label end',
      'goto end',
      'function Main.main 0',
      'push constant 1',
      'push constant 1',
      'call add 2',
      'return',
      'function add 0',
      'push argument 0',
      'push argument 1',
      'add',
      'return',
    ];
    executeMain(program, vm);
    expect(vm.stack).toEqual([2]);
  });
});
