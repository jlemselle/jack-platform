import { execute } from './runtime';
import { VirtualMachine } from './virtual-machine';

describe('scoped static', () => {
  let vm: VirtualMachine;

  beforeEach(() => {
    vm = new VirtualMachine();
  });

  it('should scope static variables to file', () => {
    execute(
      [
        {
          fileName: 'Main',
          source: [
            'push constant 17',
            'pop static 0',
            'goto aux',
            'label main',
            'push static 0',
            'goto end',
          ],
        },
        {
          fileName: 'Aux',
          source: [
            'label aux',
            'push constant 13',
            'pop static 0',
            'goto main',
            'label end',
          ],
        },
      ],
      vm
    );
    expect(vm.stack).toEqual([17]);
  });
});
