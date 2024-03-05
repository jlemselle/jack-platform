import { constants, stackStart } from './constants';
import { executeMain } from './runtime';
import { VirtualMachine } from './virtual-machine';

describe('push', () => {
  let vm: VirtualMachine;

  beforeEach(() => {
    vm = new VirtualMachine();
  });

  it('should push constant', () => {
    executeMain(['push constant 17'], vm);
    expect(vm.stackPointer).toEqual(stackStart + 1);
    expect(vm.stack).toEqual([17]);
  });

  it('should push local', () => {
    vm.initPointer(constants.LCL, 300);
    vm.pointerSet(constants.LCL, 0, 17);
    executeMain(['push local 0'], vm);
    expect(vm.stack).toEqual([17]);
  });

  it('should push argument', () => {
    vm.initPointer(constants.ARG, 400);
    vm.pointerSet(constants.ARG, 0, 17);
    executeMain(['push argument 0'], vm);
    expect(vm.stack).toEqual([17]);
  });

  it('should push this', () => {
    vm.initPointer(constants.THIS, 500);
    vm.pointerSet(constants.THIS, 0, 17);
    executeMain(['push this 0'], vm);
    expect(vm.stack).toEqual([17]);
  });

  it('should push that', () => {
    vm.initPointer(constants.THAT, 600);
    vm.pointerSet(constants.THAT, 0, 17);
    executeMain(['push that 0'], vm);
    expect(vm.stack).toEqual([17]);
  });

  it('should push static', () => {
    vm.setFileName('Main');
    vm.staticSet(0, 17);
    executeMain(['push static 0'], vm);
    expect(vm.stack).toEqual([17]);
  });

  it('should push temp', () => {
    vm.offsetSet(constants.TEMP, 0, 17);
    executeMain(['push temp 0'], vm);
    expect(vm.stack).toEqual([17]);
  });

  it('should push pointer', () => {
    vm.offsetSet(constants.PTR, 0, 17);
    executeMain(['push pointer 0'], vm);
    expect(vm.stack).toEqual([17]);
  });
});
