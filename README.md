# Jack Platform

This is a hobby project to re-implement the Nand2Tetris stack using Rust. To learn Rust and because the resulting runtime should be much faster than my TypeScript version.

The initial focus is on developing a runtime capable of executing Hack assembly language, along with an assembler to parse the source code.

After that, perhaps building up the Virtual Machine runtime as well as a Jack compiler.

It would also be worth exploring web assembly at some point, as it would be interesting to see how much faster a wasm runtime would be compared to JavaScript.

# Example output

```
0: @1 (0000000000000001)
   [*A: 1*, D: 0, M[0]: 0, PC: 0]
1: D=A (1110110000010000)
   [A: 1, *D: 1*, M[1]: 0, PC: 1]
2: @2 (0000000000000010)
   [*A: 2*, D: 1, M[1]: 0, PC: 2]
3: D=D+A (1110000010010000)
   [A: 2, *D: 3*, M[2]: 0, PC: 3]
4: @0 (0000000000000000)
   [*A: 0*, D: 3, M[2]: 0, PC: 4]
5: M=D (1110001100001000)
   [A: 0, D: 3, *M[0]: 3*, PC: 5]
```
