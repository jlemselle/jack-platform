import { VirtualMachine } from "../virtual-machine";

describe("native memory", () => {
  it("should peek and poke", () => {
    const vm = new VirtualMachine();

    vm.offsetSet(0, 1234, 17);
    vm.push(1234);
    vm.call("Memory.peek", 1);
    expect(vm.pop()).toBe(17);

    vm.push(1235);
    vm.push(24);
    vm.call("Memory.poke", 2);
    expect(vm.offsetGet(0, 1235)).toBe(24);
  });

  it("should alloc", () => {
    const vm = new VirtualMachine();

    vm.push(16);
    vm.call("Memory.alloc", 1);
    expect(vm.pop()).toBe(2048 + 2);

    vm.push(24);
    vm.call("Memory.alloc", 1);
    expect(vm.pop()).toBe(2048 + 2 + 16 + 2);
  });
});
