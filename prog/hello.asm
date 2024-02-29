@255 // start: push constant 255
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 255
@Init::return::0 // start: call Sys.init 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@5
D=D-A
@ARG
M=D
@Sys.init
0;JMP
(Init::return::0) // end: call Sys.init 0
(end) // start: label end // end: label end
@end // start: goto end
0;JMP // end: goto end
(Array.new) // start: function Array.new 0
@SP // end: function Array.new 0
@ARG // start: push argument 0 // 12:29
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 12:29
@Array.vm::return::0 // start: call Memory.alloc 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Memory.alloc
0;JMP
(Array.vm::return::0) // end: call Memory.alloc 1
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Array.dispose) // start: function Array.dispose 0
@SP // end: function Array.dispose 0
@ARG // start: push argument 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0
@SP // start: pop pointer 0
AM=M-1
D=M
@3
M=D // end: pop pointer 0
@3 // start: push pointer 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push pointer 0
@Array.vm::return::1 // start: call Memory.deAlloc 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Memory.deAlloc
0;JMP
(Array.vm::return::1) // end: call Memory.deAlloc 1
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Keyboard.init) // start: function Keyboard.init 0
@SP // end: function Keyboard.init 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Keyboard.keyPressed) // start: function Keyboard.keyPressed 0
@SP // end: function Keyboard.keyPressed 0
@24576 // start: push constant 24576
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24576
@Keyboard.vm::return::0 // start: call Memory.peek 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Memory.peek
0;JMP
(Keyboard.vm::return::0) // end: call Memory.peek 1
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Keyboard.readChar) // start: function Keyboard.readChar 1
@SP
A=M
M=0
@SP
M=M+1 // end: function Keyboard.readChar 1
@Keyboard.vm::return::1 // start: call Output.displayCursor 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@5
D=D-A
@ARG
M=D
@Output.displayCursor
0;JMP
(Keyboard.vm::return::1) // end: call Output.displayCursor 0
@Keyboard.vm::return::2 // start: call Keyboard.nextChar 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@5
D=D-A
@ARG
M=D
@Keyboard.nextChar
0;JMP
(Keyboard.vm::return::2) // end: call Keyboard.nextChar 0
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@LCL // start: push local 0 // 43:29
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 43:29
@Keyboard.vm::return::3 // start: call Output.printChar 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Output.printChar
0;JMP
(Keyboard.vm::return::3) // end: call Output.printChar 1
@LCL // start: push local 0 // 44:16
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 44:16
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Keyboard.nextChar) // start: function Keyboard.nextChar 1
@SP
A=M
M=0
@SP
M=M+1 // end: function Keyboard.nextChar 1
@Keyboard::startWhile::0 // start: goto Keyboard::startWhile::0
0;JMP // end: goto Keyboard::startWhile::0
(Keyboard::whileBlock::1) // start: label Keyboard::whileBlock::1 // end: label Keyboard::whileBlock::1
(Keyboard::startWhile::0) // start: label Keyboard::startWhile::0 // end: label Keyboard::startWhile::0
@Keyboard.vm::return::4 // start: call Keyboard.keyPressed 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@5
D=D-A
@ARG
M=D
@Keyboard.keyPressed
0;JMP
(Keyboard.vm::return::4) // end: call Keyboard.keyPressed 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@Keyboard.vm::isZero::5
D;JEQ
D=-1
(Keyboard.vm::isZero::5)
@SP
A=M-1
M=!D // end: eq
@SP // start: if-goto Keyboard::whileBlock::1
AM=M-1
D=M
@Keyboard::whileBlock::1
D;JNE // end: if-goto Keyboard::whileBlock::1
@Keyboard.vm::return::6 // start: call Keyboard.keyPressed 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@5
D=D-A
@ARG
M=D
@Keyboard.keyPressed
0;JMP
(Keyboard.vm::return::6) // end: call Keyboard.keyPressed 0
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@Keyboard::startWhile::2 // start: goto Keyboard::startWhile::2
0;JMP // end: goto Keyboard::startWhile::2
(Keyboard::whileBlock::3) // start: label Keyboard::whileBlock::3 // end: label Keyboard::whileBlock::3
(Keyboard::startWhile::2) // start: label Keyboard::startWhile::2 // end: label Keyboard::startWhile::2
@Keyboard.vm::return::7 // start: call Keyboard.keyPressed 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@5
D=D-A
@ARG
M=D
@Keyboard.keyPressed
0;JMP
(Keyboard.vm::return::7) // end: call Keyboard.keyPressed 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@Keyboard.vm::isZero::8
D;JEQ
D=-1
(Keyboard.vm::isZero::8)
@SP
A=M-1
M=!D // end: eq
@SP // start: not
A=M-1
D=M
M=!D // end: not
@SP // start: if-goto Keyboard::whileBlock::3
AM=M-1
D=M
@Keyboard::whileBlock::3
D;JNE // end: if-goto Keyboard::whileBlock::3
@LCL // start: push local 0 // 52:16
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 52:16
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Keyboard.readLine) // start: function Keyboard.readLine 2
@SP
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1 // end: function Keyboard.readLine 2
@ARG // start: push argument 0 // 63:31
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 63:31
@Keyboard.vm::return::9 // start: call Output.printString 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Output.printString
0;JMP
(Keyboard.vm::return::9) // end: call Output.printString 1
@200 // start: push constant 200
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 200
@Keyboard.vm::return::10 // start: call String.new 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@String.new
0;JMP
(Keyboard.vm::return::10) // end: call String.new 1
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@Keyboard::startWhile::4 // start: goto Keyboard::startWhile::4
0;JMP // end: goto Keyboard::startWhile::4
(Keyboard::whileBlock::5) // start: label Keyboard::whileBlock::5 // end: label Keyboard::whileBlock::5
@Keyboard.vm::return::11 // start: call Keyboard.readChar 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@5
D=D-A
@ARG
M=D
@Keyboard.readChar
0;JMP
(Keyboard.vm::return::11) // end: call Keyboard.readChar 0
@LCL // start: pop local 1
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 1
@LCL // start: push local 1 // 67:17
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 67:17
@Keyboard.vm::return::12 // start: call String.newLine 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@5
D=D-A
@ARG
M=D
@String.newLine
0;JMP
(Keyboard.vm::return::12) // end: call String.newLine 0
@SP // start: eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@Keyboard.vm::isZero::13
D;JEQ
D=-1
(Keyboard.vm::isZero::13)
@SP
A=M-1
M=!D // end: eq
@SP // start: if-goto Keyboard::thenBlock::6
AM=M-1
D=M
@Keyboard::thenBlock::6
D;JNE // end: if-goto Keyboard::thenBlock::6
@LCL // start: push local 1 // 70:21
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 70:21
@Keyboard.vm::return::14 // start: call String.backSpace 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@5
D=D-A
@ARG
M=D
@String.backSpace
0;JMP
(Keyboard.vm::return::14) // end: call String.backSpace 0
@SP // start: eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@Keyboard.vm::isZero::15
D;JEQ
D=-1
(Keyboard.vm::isZero::15)
@SP
A=M-1
M=!D // end: eq
@SP // start: if-goto Keyboard::thenBlock::8
AM=M-1
D=M
@Keyboard::thenBlock::8
D;JNE // end: if-goto Keyboard::thenBlock::8
@LCL // start: push local 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0
@LCL // start: push local 1 // 74:39
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 74:39
@Keyboard.vm::return::16 // start: call String.appendChar 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(Keyboard.vm::return::16) // end: call String.appendChar 2
@Keyboard::endIf::9 // start: goto Keyboard::endIf::9
0;JMP // end: goto Keyboard::endIf::9
(Keyboard::thenBlock::8) // start: label Keyboard::thenBlock::8 // end: label Keyboard::thenBlock::8
@Keyboard.vm::return::17 // start: call Output.backSpace 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@5
D=D-A
@ARG
M=D
@Output.backSpace
0;JMP
(Keyboard.vm::return::17) // end: call Output.backSpace 0
@LCL // start: push local 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0
@Keyboard.vm::return::18 // start: call String.eraseLastChar 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@String.eraseLastChar
0;JMP
(Keyboard.vm::return::18) // end: call String.eraseLastChar 1
(Keyboard::endIf::9) // start: label Keyboard::endIf::9 // end: label Keyboard::endIf::9
@Keyboard::endIf::7 // start: goto Keyboard::endIf::7
0;JMP // end: goto Keyboard::endIf::7
(Keyboard::thenBlock::6) // start: label Keyboard::thenBlock::6 // end: label Keyboard::thenBlock::6
@LCL // start: push local 0 // 68:24
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 68:24
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Keyboard::endIf::7) // start: label Keyboard::endIf::7 // end: label Keyboard::endIf::7
(Keyboard::startWhile::4) // start: label Keyboard::startWhile::4 // end: label Keyboard::startWhile::4
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: not
A=M-1
D=M
M=!D // end: not
@SP // start: if-goto Keyboard::whileBlock::5
AM=M-1
D=M
@Keyboard::whileBlock::5
D;JNE // end: if-goto Keyboard::whileBlock::5
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Keyboard.readInt) // start: function Keyboard.readInt 0
@SP // end: function Keyboard.readInt 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Main.main) // start: function Main.main 1
@SP
A=M
M=0
@SP
M=M+1 // end: function Main.main 1
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@8 // start: push constant 8
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 8
@Main.vm::return::0 // start: call String.new 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@String.new
0;JMP
(Main.vm::return::0) // end: call String.new 1
@SP // start: pop temp 1
AM=M-1
D=M
@6
M=D // end: pop temp 1
@6 // start: push temp 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 1
@49 // start: push constant 49
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 49
@Main.vm::return::1 // start: call String.appendChar 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(Main.vm::return::1) // end: call String.appendChar 2
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@6 // start: push temp 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 1
@32 // start: push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 32
@Main.vm::return::2 // start: call String.appendChar 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(Main.vm::return::2) // end: call String.appendChar 2
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@6 // start: push temp 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 1
@43 // start: push constant 43
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 43
@Main.vm::return::3 // start: call String.appendChar 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(Main.vm::return::3) // end: call String.appendChar 2
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@6 // start: push temp 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 1
@32 // start: push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 32
@Main.vm::return::4 // start: call String.appendChar 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(Main.vm::return::4) // end: call String.appendChar 2
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@6 // start: push temp 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 1
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@Main.vm::return::5 // start: call String.appendChar 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(Main.vm::return::5) // end: call String.appendChar 2
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@6 // start: push temp 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 1
@32 // start: push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 32
@Main.vm::return::6 // start: call String.appendChar 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(Main.vm::return::6) // end: call String.appendChar 2
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@6 // start: push temp 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 1
@61 // start: push constant 61
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 61
@Main.vm::return::7 // start: call String.appendChar 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(Main.vm::return::7) // end: call String.appendChar 2
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@6 // start: push temp 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 1
@32 // start: push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 32
@Main.vm::return::8 // start: call String.appendChar 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(Main.vm::return::8) // end: call String.appendChar 2
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@6 // start: push temp 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 1
@Main.vm::return::9 // start: call Output.printString 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Output.printString
0;JMP
(Main.vm::return::9) // end: call Output.printString 1
@LCL // start: push local 0 // 6:28
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 6:28
@Main.vm::return::10 // start: call Output.printInt 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Output.printInt
0;JMP
(Main.vm::return::10) // end: call Output.printInt 1
@Main.vm::return::11 // start: call Output.println 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@5
D=D-A
@ARG
M=D
@Output.println
0;JMP
(Main.vm::return::11) // end: call Output.println 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Math.init) // start: function Math.init 0
@SP // end: function Math.init 0
@16 // start: push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 16
@Math.vm::return::0 // start: call Array.new 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Array.new
0;JMP
(Math.vm::return::0) // end: call Array.new 1
@SP // start: pop static 0
AM=M-1
D=M
@static.Math.vm.0
M=D // end: pop static 0
@static.Math.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Math.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@2 // start: push constant 2
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 2
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Math.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@2 // start: push constant 2
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 2
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@4 // start: push constant 4
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 4
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Math.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@8 // start: push constant 8
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 8
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Math.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@4 // start: push constant 4
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 4
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@16 // start: push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 16
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Math.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@5 // start: push constant 5
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 5
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@32 // start: push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 32
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Math.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@64 // start: push constant 64
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 64
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Math.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@7 // start: push constant 7
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 7
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@128 // start: push constant 128
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 128
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Math.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@8 // start: push constant 8
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 8
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@256 // start: push constant 256
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 256
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Math.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@9 // start: push constant 9
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 9
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@512 // start: push constant 512
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 512
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Math.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@10 // start: push constant 10
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 10
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@1024 // start: push constant 1024
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1024
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Math.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@11 // start: push constant 11
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 11
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@2048 // start: push constant 2048
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 2048
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Math.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@4096 // start: push constant 4096
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 4096
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Math.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@13 // start: push constant 13
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 13
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@8192 // start: push constant 8192
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 8192
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Math.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@14 // start: push constant 14
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 14
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@16384 // start: push constant 16384
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 16384
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Math.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@15 // start: push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 15
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@32767 // start: push constant 32767
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 32767
@SP // start: not
A=M-1
D=M
M=!D // end: not
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Math.abs) // start: function Math.abs 0
@SP // end: function Math.abs 0
@ARG // start: push argument 0 // 32:13
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 32:13
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Math.vm::isTrue::1
D;JLT
D=0
@Math.vm::isFalse::2
0;JMP
(Math.vm::isTrue::1)
D=-1
(Math.vm::isFalse::2)
@SP
A=M-1
M=D // end: lt
@SP // start: if-goto Math::thenBlock::0
AM=M-1
D=M
@Math::thenBlock::0
D;JNE // end: if-goto Math::thenBlock::0
@Math::endIf::1 // start: goto Math::endIf::1
0;JMP // end: goto Math::endIf::1
(Math::thenBlock::0) // start: label Math::thenBlock::0 // end: label Math::thenBlock::0
@ARG // start: push argument 0 // 33:21
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 33:21
@SP // start: neg
A=M-1
D=M
M=-D // end: neg
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Math::endIf::1) // start: label Math::endIf::1 // end: label Math::endIf::1
@ARG // start: push argument 0 // 35:16
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 35:16
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Math.multiply) // start: function Math.multiply 3
@SP
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1 // end: function Math.multiply 3
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@ARG // start: push argument 0 // 47:24
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 47:24
@LCL // start: pop local 1
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 1
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: pop local 2
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 2
@Math::startWhile::2 // start: goto Math::startWhile::2
0;JMP // end: goto Math::startWhile::2
(Math::whileBlock::3) // start: label Math::whileBlock::3 // end: label Math::whileBlock::3
@ARG // start: push argument 1 // 51:26
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 51:26
@LCL // start: push local 0 // 51:29
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 51:29
@Math.vm::return::3 // start: call Math.bit 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@Math.bit
0;JMP
(Math.vm::return::3) // end: call Math.bit 2
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: not
A=M-1
D=M
M=!D // end: not
@SP // start: eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@Math.vm::isZero::4
D;JEQ
D=-1
(Math.vm::isZero::4)
@SP
A=M-1
M=!D // end: eq
@SP // start: if-goto Math::thenBlock::4
AM=M-1
D=M
@Math::thenBlock::4
D;JNE // end: if-goto Math::thenBlock::4
@Math::endIf::5 // start: goto Math::endIf::5
0;JMP // end: goto Math::endIf::5
(Math::thenBlock::4) // start: label Math::thenBlock::4 // end: label Math::thenBlock::4
@LCL // start: push local 2 // 52:30
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 52:30
@LCL // start: push local 1 // 52:39
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 52:39
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: pop local 2
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 2
(Math::endIf::5) // start: label Math::endIf::5 // end: label Math::endIf::5
@LCL // start: push local 1 // 55:28
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 55:28
@LCL // start: push local 1 // 55:39
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 55:39
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: pop local 1
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 1
@LCL // start: push local 0 // 56:21
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 56:21
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
(Math::startWhile::2) // start: label Math::startWhile::2 // end: label Math::startWhile::2
@LCL // start: push local 0 // 50:16
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 50:16
@16 // start: push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 16
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Math.vm::isTrue::5
D;JLT
D=0
@Math.vm::isFalse::6
0;JMP
(Math.vm::isTrue::5)
D=-1
(Math.vm::isFalse::6)
@SP
A=M-1
M=D // end: lt
@SP // start: if-goto Math::whileBlock::3
AM=M-1
D=M
@Math::whileBlock::3
D;JNE // end: if-goto Math::whileBlock::3
@LCL // start: push local 2 // 59:16
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 59:16
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Math.bit) // start: function Math.bit 0
@SP // end: function Math.bit 0
@ARG // start: push argument 0 // 63:19
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 63:19
@static.Math.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@ARG // start: push argument 1 // 63:32
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 63:32
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@THAT // start: push that 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push that 0
@SP // start: and
M=M-1
A=M
D=M
A=A-1
D=D&M
M=D // end: and
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@Math.vm::isZero::7
D;JEQ
D=-1
(Math.vm::isZero::7)
@SP
A=M-1
M=!D // end: eq
@SP // start: not
A=M-1
D=M
M=!D // end: not
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Math.divide) // start: function Math.divide 1
@SP
A=M
M=0
@SP
M=M+1 // end: function Math.divide 1
@ARG // start: push argument 1 // 74:13
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 74:13
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@Math.vm::isZero::8
D;JEQ
D=-1
(Math.vm::isZero::8)
@SP
A=M-1
M=!D // end: eq
@SP // start: if-goto Math::thenBlock::6
AM=M-1
D=M
@Math::thenBlock::6
D;JNE // end: if-goto Math::thenBlock::6
@Math::endIf::7 // start: goto Math::endIf::7
0;JMP // end: goto Math::endIf::7
(Math::thenBlock::6) // start: label Math::thenBlock::6 // end: label Math::thenBlock::6
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Math::endIf::7) // start: label Math::endIf::7 // end: label Math::endIf::7
@ARG // start: push argument 0 // 78:46
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 78:46
@Math.vm::return::9 // start: call Math.abs 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Math.abs
0;JMP
(Math.vm::return::9) // end: call Math.abs 1
@ARG // start: push argument 1 // 78:59
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 78:59
@Math.vm::return::10 // start: call Math.abs 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Math.abs
0;JMP
(Math.vm::return::10) // end: call Math.abs 1
@Math.vm::return::11 // start: call Math.divideAbs 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@Math.divideAbs
0;JMP
(Math.vm::return::11) // end: call Math.divideAbs 2
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@ARG // start: push argument 0 // 79:13
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 79:13
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Math.vm::isTrue::12
D;JLT
D=0
@Math.vm::isFalse::13
0;JMP
(Math.vm::isTrue::12)
D=-1
(Math.vm::isFalse::13)
@SP
A=M-1
M=D // end: lt
@SP // start: if-goto Math::thenBlock::8
AM=M-1
D=M
@Math::thenBlock::8
D;JNE // end: if-goto Math::thenBlock::8
@Math::endIf::9 // start: goto Math::endIf::9
0;JMP // end: goto Math::endIf::9
(Math::thenBlock::8) // start: label Math::thenBlock::8 // end: label Math::thenBlock::8
@LCL // start: push local 0 // 80:27
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 80:27
@SP // start: neg
A=M-1
D=M
M=-D // end: neg
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
(Math::endIf::9) // start: label Math::endIf::9 // end: label Math::endIf::9
@ARG // start: push argument 1 // 82:13
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 82:13
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Math.vm::isTrue::14
D;JLT
D=0
@Math.vm::isFalse::15
0;JMP
(Math.vm::isTrue::14)
D=-1
(Math.vm::isFalse::15)
@SP
A=M-1
M=D // end: lt
@SP // start: if-goto Math::thenBlock::10
AM=M-1
D=M
@Math::thenBlock::10
D;JNE // end: if-goto Math::thenBlock::10
@Math::endIf::11 // start: goto Math::endIf::11
0;JMP // end: goto Math::endIf::11
(Math::thenBlock::10) // start: label Math::thenBlock::10 // end: label Math::thenBlock::10
@LCL // start: push local 0 // 83:27
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 83:27
@SP // start: neg
A=M-1
D=M
M=-D // end: neg
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
(Math::endIf::11) // start: label Math::endIf::11 // end: label Math::endIf::11
@LCL // start: push local 0 // 86:16
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 86:16
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Math.divideAbs) // start: function Math.divideAbs 1
@SP
A=M
M=0
@SP
M=M+1 // end: function Math.divideAbs 1
@ARG // start: push argument 1 // 92:13
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 92:13
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Math.vm::isTrue::16
D;JLT
D=0
@Math.vm::isFalse::17
0;JMP
(Math.vm::isTrue::16)
D=-1
(Math.vm::isFalse::17)
@SP
A=M-1
M=D // end: lt
@SP // start: if-goto Math::thenBlock::12
AM=M-1
D=M
@Math::thenBlock::12
D;JNE // end: if-goto Math::thenBlock::12
@Math::endIf::13 // start: goto Math::endIf::13
0;JMP // end: goto Math::endIf::13
(Math::thenBlock::12) // start: label Math::thenBlock::12 // end: label Math::thenBlock::12
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Math::endIf::13) // start: label Math::endIf::13 // end: label Math::endIf::13
@ARG // start: push argument 1 // 97:13
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 97:13
@ARG // start: push argument 0 // 97:17
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 97:17
@SP // start: gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Math.vm::isTrue::18
D;JGT
D=0
@Math.vm::isFalse::19
0;JMP
(Math.vm::isTrue::18)
D=-1
(Math.vm::isFalse::19)
@SP
A=M-1
M=D // end: gt
@SP // start: if-goto Math::thenBlock::14
AM=M-1
D=M
@Math::thenBlock::14
D;JNE // end: if-goto Math::thenBlock::14
@Math::endIf::15 // start: goto Math::endIf::15
0;JMP // end: goto Math::endIf::15
(Math::thenBlock::14) // start: label Math::thenBlock::14 // end: label Math::thenBlock::14
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Math::endIf::15) // start: label Math::endIf::15 // end: label Math::endIf::15
@ARG // start: push argument 0 // 102:32
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 102:32
@ARG // start: push argument 1 // 102:35
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 102:35
@ARG // start: push argument 1 // 102:39
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 102:39
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@Math.vm::return::20 // start: call Math.divideAbs 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@Math.divideAbs
0;JMP
(Math.vm::return::20) // end: call Math.divideAbs 2
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@ARG // start: push argument 0 // 103:14
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 103:14
@LCL // start: push local 0 // 103:32
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 103:32
@LCL // start: push local 0 // 103:36
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 103:36
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@ARG // start: push argument 1 // 103:39
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 103:39
@Math.vm::return::21 // start: call Math.multiply 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Math.vm::return::21) // end: call Math.multiply 2
@SP // start: sub
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D // end: sub
@ARG // start: push argument 1 // 103:45
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 103:45
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Math.vm::isTrue::22
D;JLT
D=0
@Math.vm::isFalse::23
0;JMP
(Math.vm::isTrue::22)
D=-1
(Math.vm::isFalse::23)
@SP
A=M-1
M=D // end: lt
@SP // start: if-goto Math::thenBlock::16
AM=M-1
D=M
@Math::thenBlock::16
D;JNE // end: if-goto Math::thenBlock::16
@LCL // start: push local 0 // 109:20
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 109:20
@LCL // start: push local 0 // 109:24
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 109:24
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
@Math::endIf::17 // start: goto Math::endIf::17
0;JMP // end: goto Math::endIf::17
(Math::thenBlock::16) // start: label Math::thenBlock::16 // end: label Math::thenBlock::16
@LCL // start: push local 0 // 105:20
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 105:20
@LCL // start: push local 0 // 105:24
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 105:24
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Math::endIf::17) // start: label Math::endIf::17 // end: label Math::endIf::17
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Math.sqrt) // start: function Math.sqrt 3
@SP
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1 // end: function Math.sqrt 3
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@7 // start: push constant 7
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 7
@LCL // start: pop local 1
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 1
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: pop local 2
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 2
@Math::startWhile::18 // start: goto Math::startWhile::18
0;JMP // end: goto Math::startWhile::18
(Math::whileBlock::19) // start: label Math::whileBlock::19 // end: label Math::whileBlock::19
@LCL // start: push local 0 // 122:30
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 122:30
@static.Math.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@LCL // start: push local 1 // 122:48
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 122:48
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@THAT // start: push that 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push that 0
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: pop local 2
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 2
@LCL // start: push local 2 // 123:44
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 123:44
@LCL // start: push local 2 // 123:56
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 123:56
@Math.vm::return::24 // start: call Math.multiply 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Math.vm::return::24) // end: call Math.multiply 2
@LCL // start: pop local 2
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 2
@LCL // start: push local 2 // 124:20
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 124:20
@ARG // start: push argument 0 // 124:33
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 124:33
@SP // start: gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Math.vm::isTrue::25
D;JGT
D=0
@Math.vm::isFalse::26
0;JMP
(Math.vm::isTrue::25)
D=-1
(Math.vm::isFalse::26)
@SP
A=M-1
M=D // end: gt
@SP // start: not
A=M-1
D=M
M=!D // end: not
@LCL // start: push local 2 // 124:40
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 124:40
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Math.vm::isTrue::27
D;JGT
D=0
@Math.vm::isFalse::28
0;JMP
(Math.vm::isTrue::27)
D=-1
(Math.vm::isFalse::28)
@SP
A=M-1
M=D // end: gt
@SP // start: and
M=M-1
A=M
D=M
A=A-1
D=D&M
M=D // end: and
@SP // start: if-goto Math::thenBlock::20
AM=M-1
D=M
@Math::thenBlock::20
D;JNE // end: if-goto Math::thenBlock::20
@Math::endIf::21 // start: goto Math::endIf::21
0;JMP // end: goto Math::endIf::21
(Math::thenBlock::20) // start: label Math::thenBlock::20 // end: label Math::thenBlock::20
@LCL // start: push local 0 // 125:30
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 125:30
@static.Math.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@LCL // start: push local 1 // 125:48
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 125:48
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@THAT // start: push that 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push that 0
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
(Math::endIf::21) // start: label Math::endIf::21 // end: label Math::endIf::21
@LCL // start: push local 1 // 127:31
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 127:31
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: sub
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D // end: sub
@LCL // start: pop local 1
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 1
(Math::startWhile::18) // start: label Math::startWhile::18 // end: label Math::startWhile::18
@LCL // start: push local 1 // 120:18
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 120:18
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Math.vm::isTrue::29
D;JLT
D=0
@Math.vm::isFalse::30
0;JMP
(Math.vm::isTrue::29)
D=-1
(Math.vm::isFalse::30)
@SP
A=M-1
M=D // end: lt
@SP // start: not
A=M-1
D=M
M=!D // end: not
@SP // start: if-goto Math::whileBlock::19
AM=M-1
D=M
@Math::whileBlock::19
D;JNE // end: if-goto Math::whileBlock::19
@LCL // start: push local 0 // 130:16
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 130:16
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Math.max) // start: function Math.max 0
@SP // end: function Math.max 0
@ARG // start: push argument 0 // 135:13
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 135:13
@ARG // start: push argument 1 // 135:17
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 135:17
@SP // start: gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Math.vm::isTrue::31
D;JGT
D=0
@Math.vm::isFalse::32
0;JMP
(Math.vm::isTrue::31)
D=-1
(Math.vm::isFalse::32)
@SP
A=M-1
M=D // end: gt
@SP // start: if-goto Math::thenBlock::22
AM=M-1
D=M
@Math::thenBlock::22
D;JNE // end: if-goto Math::thenBlock::22
@Math::endIf::23 // start: goto Math::endIf::23
0;JMP // end: goto Math::endIf::23
(Math::thenBlock::22) // start: label Math::thenBlock::22 // end: label Math::thenBlock::22
@ARG // start: push argument 0 // 136:20
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 136:20
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Math::endIf::23) // start: label Math::endIf::23 // end: label Math::endIf::23
@ARG // start: push argument 1 // 138:16
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 138:16
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Math.min) // start: function Math.min 0
@SP // end: function Math.min 0
@ARG // start: push argument 0 // 143:13
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 143:13
@ARG // start: push argument 1 // 143:17
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 143:17
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Math.vm::isTrue::33
D;JLT
D=0
@Math.vm::isFalse::34
0;JMP
(Math.vm::isTrue::33)
D=-1
(Math.vm::isFalse::34)
@SP
A=M-1
M=D // end: lt
@SP // start: if-goto Math::thenBlock::24
AM=M-1
D=M
@Math::thenBlock::24
D;JNE // end: if-goto Math::thenBlock::24
@Math::endIf::25 // start: goto Math::endIf::25
0;JMP // end: goto Math::endIf::25
(Math::thenBlock::24) // start: label Math::thenBlock::24 // end: label Math::thenBlock::24
@ARG // start: push argument 0 // 144:20
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 144:20
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Math::endIf::25) // start: label Math::endIf::25 // end: label Math::endIf::25
@ARG // start: push argument 1 // 146:16
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 146:16
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Memory.init) // start: function Memory.init 0
@SP // end: function Memory.init 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: pop static 0
AM=M-1
D=M
@static.Memory.vm.0
M=D // end: pop static 0
@2048 // start: push constant 2048
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 2048
@SP // start: pop static 1
AM=M-1
D=M
@static.Memory.vm.1
M=D // end: pop static 1
@static.Memory.vm.1 // start: push static 1 // 14:23
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1 // 14:23
@SP // start: pop static 3
AM=M-1
D=M
@static.Memory.vm.3
M=D // end: pop static 3
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: neg
A=M-1
D=M
M=-D // end: neg
@SP // start: pop static 2
AM=M-1
D=M
@static.Memory.vm.2
M=D // end: pop static 2
@static.Memory.vm.1 // start: push static 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@static.Memory.vm.2 // start: push static 2 // 16:23
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 2 // 16:23
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Memory.vm.1 // start: push static 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@14334 // start: push constant 14334
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 14334
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Memory.peek) // start: function Memory.peek 0
@SP // end: function Memory.peek 0
@static.Memory.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@ARG // start: push argument 0 // 22:20
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 22:20
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@THAT // start: push that 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push that 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Memory.poke) // start: function Memory.poke 0
@SP // end: function Memory.poke 0
@static.Memory.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@ARG // start: push argument 0 // 27:17
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 27:17
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@ARG // start: push argument 1 // 27:28
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 27:28
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@ARG // start: push argument 1 // 28:16
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 28:16
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Memory.fill) // start: function Memory.fill 1
@SP
A=M
M=0
@SP
M=M+1 // end: function Memory.fill 1
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@Memory::startWhile::0 // start: goto Memory::startWhile::0
0;JMP // end: goto Memory::startWhile::0
(Memory::whileBlock::1) // start: label Memory::whileBlock::1 // end: label Memory::whileBlock::1
@static.Memory.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@ARG // start: push argument 0 // 35:21
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 35:21
@LCL // start: push local 0 // 35:31
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 35:31
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@ARG // start: push argument 2 // 35:36
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 2 // 35:36
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@LCL // start: push local 0 // 36:21
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 36:21
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
(Memory::startWhile::0) // start: label Memory::startWhile::0 // end: label Memory::startWhile::0
@LCL // start: push local 0 // 34:16
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 34:16
@ARG // start: push argument 1 // 34:20
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 34:20
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Memory.vm::isTrue::0
D;JLT
D=0
@Memory.vm::isFalse::1
0;JMP
(Memory.vm::isTrue::0)
D=-1
(Memory.vm::isFalse::1)
@SP
A=M-1
M=D // end: lt
@SP // start: if-goto Memory::whileBlock::1
AM=M-1
D=M
@Memory::whileBlock::1
D;JNE // end: if-goto Memory::whileBlock::1
@ARG // start: push argument 2 // 38:16
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 2 // 38:16
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Memory.alloc) // start: function Memory.alloc 7
@SP
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1 // end: function Memory.alloc 7
@static.Memory.vm.2 // start: push static 2 // 46:23
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 2 // 46:23
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@static.Memory.vm.3 // start: push static 3 // 47:19
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 3 // 47:19
@LCL // start: pop local 1
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 1
@ARG // start: push argument 0 // 48:27
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 48:27
@2 // start: push constant 2
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 2
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: pop local 2
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 2
@Memory::startWhile::2 // start: goto Memory::startWhile::2
0;JMP // end: goto Memory::startWhile::2
(Memory::whileBlock::3) // start: label Memory::whileBlock::3 // end: label Memory::whileBlock::3
@LCL // start: push local 1 // 51:27
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 51:27
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@static.Memory.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@LCL // start: push local 1 // 52:27
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 52:27
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@THAT // start: push that 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push that 0
@LCL // start: pop local 1
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 1
(Memory::startWhile::2) // start: label Memory::startWhile::2 // end: label Memory::startWhile::2
@LCL // start: push local 1 // 49:18
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 49:18
@static.Memory.vm.2 // start: push static 2 // 49:24
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 2 // 49:24
@SP // start: eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@Memory.vm::isZero::2
D;JEQ
D=-1
(Memory.vm::isZero::2)
@SP
A=M-1
M=!D // end: eq
@SP // start: not
A=M-1
D=M
M=!D // end: not
@static.Memory.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@LCL // start: push local 1 // 49:40
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 49:40
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@THAT // start: push that 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push that 0
@LCL // start: push local 2 // 49:51
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 49:51
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Memory.vm::isTrue::3
D;JLT
D=0
@Memory.vm::isFalse::4
0;JMP
(Memory.vm::isTrue::3)
D=-1
(Memory.vm::isFalse::4)
@SP
A=M-1
M=D // end: lt
@SP // start: and
M=M-1
A=M
D=M
A=A-1
D=D&M
M=D // end: and
@SP // start: if-goto Memory::whileBlock::3
AM=M-1
D=M
@Memory::whileBlock::3
D;JNE // end: if-goto Memory::whileBlock::3
@LCL // start: push local 1 // 55:13
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 55:13
@static.Memory.vm.2 // start: push static 2 // 55:19
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 2 // 55:19
@SP // start: eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@Memory.vm::isZero::5
D;JEQ
D=-1
(Memory.vm::isZero::5)
@SP
A=M-1
M=!D // end: eq
@SP // start: if-goto Memory::thenBlock::4
AM=M-1
D=M
@Memory::thenBlock::4
D;JNE // end: if-goto Memory::thenBlock::4
@Memory::endIf::5 // start: goto Memory::endIf::5
0;JMP // end: goto Memory::endIf::5
(Memory::thenBlock::4) // start: label Memory::thenBlock::4 // end: label Memory::thenBlock::4
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: neg
A=M-1
D=M
M=-D // end: neg
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Memory::endIf::5) // start: label Memory::endIf::5 // end: label Memory::endIf::5
@LCL // start: push local 1 // 60:24
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 60:24
@2 // start: push constant 2
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 2
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: pop local 3
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 3
@static.Memory.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@LCL // start: push local 1 // 61:27
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 61:27
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@THAT // start: push that 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push that 0
@LCL // start: push local 2 // 61:38
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 61:38
@SP // start: sub
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D // end: sub
@LCL // start: pop local 4
D=M
@4
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 4
@static.Memory.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@LCL // start: push local 1 // 62:27
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 62:27
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@THAT // start: push that 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push that 0
@LCL // start: pop local 5
D=M
@5
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 5
@LCL // start: push local 1 // 63:22
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 63:22
@LCL // start: push local 2 // 63:28
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 63:28
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: pop local 6
D=M
@6
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 6
@LCL // start: push local 1 // 65:13
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 65:13
@static.Memory.vm.3 // start: push static 3 // 65:19
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 3 // 65:19
@SP // start: eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@Memory.vm::isZero::6
D;JEQ
D=-1
(Memory.vm::isZero::6)
@SP
A=M-1
M=!D // end: eq
@SP // start: if-goto Memory::thenBlock::6
AM=M-1
D=M
@Memory::thenBlock::6
D;JNE // end: if-goto Memory::thenBlock::6
@Memory::endIf::7 // start: goto Memory::endIf::7
0;JMP // end: goto Memory::endIf::7
(Memory::thenBlock::6) // start: label Memory::thenBlock::6 // end: label Memory::thenBlock::6
@LCL // start: push local 6 // 67:27
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 6 // 67:27
@SP // start: pop static 3
AM=M-1
D=M
@static.Memory.vm.3
M=D // end: pop static 3
(Memory::endIf::7) // start: label Memory::endIf::7 // end: label Memory::endIf::7
@LCL // start: push local 0 // 70:15
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 70:15
@static.Memory.vm.2 // start: push static 2 // 70:25
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 2 // 70:25
@SP // start: eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@Memory.vm::isZero::7
D;JEQ
D=-1
(Memory.vm::isZero::7)
@SP
A=M-1
M=!D // end: eq
@SP // start: not
A=M-1
D=M
M=!D // end: not
@SP // start: if-goto Memory::thenBlock::8
AM=M-1
D=M
@Memory::thenBlock::8
D;JNE // end: if-goto Memory::thenBlock::8
@Memory::endIf::9 // start: goto Memory::endIf::9
0;JMP // end: goto Memory::endIf::9
(Memory::thenBlock::8) // start: label Memory::thenBlock::8 // end: label Memory::thenBlock::8
@static.Memory.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@LCL // start: push local 0 // 72:21
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 72:21
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: push local 6 // 72:32
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 6 // 72:32
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
(Memory::endIf::9) // start: label Memory::endIf::9 // end: label Memory::endIf::9
@static.Memory.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@LCL // start: push local 6 // 75:17
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 6 // 75:17
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: push local 5 // 75:27
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 5 // 75:27
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Memory.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@LCL // start: push local 6 // 76:17
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 6 // 76:17
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: push local 4 // 76:31
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 4 // 76:31
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@LCL // start: push local 3 // 78:16
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 3 // 78:16
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Memory.deAlloc) // start: function Memory.deAlloc 5
@SP
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1 // end: function Memory.deAlloc 5
@static.Memory.vm.2 // start: push static 2 // 87:23
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 2 // 87:23
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@static.Memory.vm.3 // start: push static 3 // 88:19
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 3 // 88:19
@LCL // start: pop local 1
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 1
@Memory::startWhile::10 // start: goto Memory::startWhile::10
0;JMP // end: goto Memory::startWhile::10
(Memory::whileBlock::11) // start: label Memory::whileBlock::11 // end: label Memory::whileBlock::11
@LCL // start: push local 1 // 91:27
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 91:27
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@static.Memory.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@LCL // start: push local 1 // 92:27
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 92:27
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@THAT // start: push that 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push that 0
@LCL // start: pop local 1
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 1
(Memory::startWhile::10) // start: label Memory::startWhile::10 // end: label Memory::startWhile::10
@LCL // start: push local 1 // 89:18
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 89:18
@static.Memory.vm.2 // start: push static 2 // 89:24
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 2 // 89:24
@SP // start: eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@Memory.vm::isZero::8
D;JEQ
D=-1
(Memory.vm::isZero::8)
@SP
A=M-1
M=!D // end: eq
@SP // start: not
A=M-1
D=M
M=!D // end: not
@LCL // start: push local 1 // 89:36
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 89:36
@ARG // start: push argument 0 // 89:42
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 89:42
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Memory.vm::isTrue::9
D;JLT
D=0
@Memory.vm::isFalse::10
0;JMP
(Memory.vm::isTrue::9)
D=-1
(Memory.vm::isFalse::10)
@SP
A=M-1
M=D // end: lt
@SP // start: and
M=M-1
A=M
D=M
A=A-1
D=D&M
M=D // end: and
@SP // start: if-goto Memory::whileBlock::11
AM=M-1
D=M
@Memory::whileBlock::11
D;JNE // end: if-goto Memory::whileBlock::11
@ARG // start: push argument 0 // 96:26
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 96:26
@2 // start: push constant 2
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 2
@SP // start: sub
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D // end: sub
@LCL // start: pop local 2
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 2
@static.Memory.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@LCL // start: push local 2 // 97:24
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 97:24
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@THAT // start: push that 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push that 0
@LCL // start: pop local 4
D=M
@4
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 4
@LCL // start: push local 0 // 99:13
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 99:13
@static.Memory.vm.2 // start: push static 2 // 99:23
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 2 // 99:23
@SP // start: eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@Memory.vm::isZero::11
D;JEQ
D=-1
(Memory.vm::isZero::11)
@SP
A=M-1
M=!D // end: eq
@SP // start: if-goto Memory::thenBlock::12
AM=M-1
D=M
@Memory::thenBlock::12
D;JNE // end: if-goto Memory::thenBlock::12
@static.Memory.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@LCL // start: push local 0 // 105:21
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 105:21
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: push local 2 // 105:32
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 105:32
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@Memory::endIf::13 // start: goto Memory::endIf::13
0;JMP // end: goto Memory::endIf::13
(Memory::thenBlock::12) // start: label Memory::thenBlock::12 // end: label Memory::thenBlock::12
@LCL // start: push local 2 // 101:27
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 101:27
@SP // start: pop static 3
AM=M-1
D=M
@static.Memory.vm.3
M=D // end: pop static 3
(Memory::endIf::13) // start: label Memory::endIf::13 // end: label Memory::endIf::13
@static.Memory.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@LCL // start: push local 2 // 108:17
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 108:17
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: push local 1 // 108:31
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 108:31
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@LCL // start: push local 2 // 111:23
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 111:23
@LCL // start: push local 4 // 111:36
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 4 // 111:36
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: pop local 3
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 3
@LCL // start: push local 1 // 112:15
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 112:15
@static.Memory.vm.2 // start: push static 2 // 112:21
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 2 // 112:21
@SP // start: eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@Memory.vm::isZero::12
D;JEQ
D=-1
(Memory.vm::isZero::12)
@SP
A=M-1
M=!D // end: eq
@SP // start: not
A=M-1
D=M
M=!D // end: not
@LCL // start: push local 3 // 112:33
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 3 // 112:33
@LCL // start: push local 1 // 112:43
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 112:43
@SP // start: eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@Memory.vm::isZero::13
D;JEQ
D=-1
(Memory.vm::isZero::13)
@SP
A=M-1
M=!D // end: eq
@SP // start: and
M=M-1
A=M
D=M
A=A-1
D=D&M
M=D // end: and
@SP // start: if-goto Memory::thenBlock::14
AM=M-1
D=M
@Memory::thenBlock::14
D;JNE // end: if-goto Memory::thenBlock::14
@Memory::endIf::15 // start: goto Memory::endIf::15
0;JMP // end: goto Memory::endIf::15
(Memory::thenBlock::14) // start: label Memory::thenBlock::14 // end: label Memory::thenBlock::14
@LCL // start: push local 4 // 114:24
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 4 // 114:24
@static.Memory.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@LCL // start: push local 1 // 114:35
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 114:35
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@THAT // start: push that 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push that 0
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: pop local 4
D=M
@4
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 4
@static.Memory.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@LCL // start: push local 2 // 115:21
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 115:21
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@static.Memory.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@LCL // start: push local 1 // 115:39
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 115:39
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@THAT // start: push that 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push that 0
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
(Memory::endIf::15) // start: label Memory::endIf::15 // end: label Memory::endIf::15
@static.Memory.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@LCL // start: push local 2 // 119:17
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 119:17
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: push local 4 // 119:35
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 4 // 119:35
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Output.init) // start: function Output.init 0
@SP // end: function Output.init 0
@Output.vm::return::0 // start: call Output.initMap 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@5
D=D-A
@ARG
M=D
@Output.initMap
0;JMP
(Output.vm::return::0) // end: call Output.initMap 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: pop static 1
AM=M-1
D=M
@static.Output.vm.1
M=D // end: pop static 1
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: pop static 2
AM=M-1
D=M
@static.Output.vm.2
M=D // end: pop static 2
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Output.initMap) // start: function Output.initMap 1
@SP
A=M
M=0
@SP
M=M+1 // end: function Output.initMap 1
@127 // start: push constant 127
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 127
@Output.vm::return::1 // start: call Array.new 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Array.new
0;JMP
(Output.vm::return::1) // end: call Array.new 1
@SP // start: pop static 0
AM=M-1
D=M
@static.Output.vm.0
M=D // end: pop static 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::2 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::2) // end: call Output.create 12
@32 // start: push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 32
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::3 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::3) // end: call Output.create 12
@33 // start: push constant 33
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 33
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::4 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::4) // end: call Output.create 12
@34 // start: push constant 34
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 34
@54 // start: push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 54
@54 // start: push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 54
@20 // start: push constant 20
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 20
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::5 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::5) // end: call Output.create 12
@35 // start: push constant 35
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 35
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@18 // start: push constant 18
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 18
@18 // start: push constant 18
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 18
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@18 // start: push constant 18
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 18
@18 // start: push constant 18
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 18
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@18 // start: push constant 18
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 18
@18 // start: push constant 18
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 18
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::6 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::6) // end: call Output.create 12
@36 // start: push constant 36
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 36
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::7 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::7) // end: call Output.create 12
@37 // start: push constant 37
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 37
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@35 // start: push constant 35
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 35
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@49 // start: push constant 49
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 49
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::8 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::8) // end: call Output.create 12
@38 // start: push constant 38
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 38
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@54 // start: push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 54
@27 // start: push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 27
@27 // start: push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 27
@27 // start: push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 27
@54 // start: push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 54
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::9 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::9) // end: call Output.create 12
@39 // start: push constant 39
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 39
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::10 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::10) // end: call Output.create 12
@40 // start: push constant 40
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 40
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::11 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::11) // end: call Output.create 12
@41 // start: push constant 41
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 41
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::12 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::12) // end: call Output.create 12
@42 // start: push constant 42
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 42
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::13 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::13) // end: call Output.create 12
@43 // start: push constant 43
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 43
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::14 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::14) // end: call Output.create 12
@44 // start: push constant 44
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 44
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::15 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::15) // end: call Output.create 12
@45 // start: push constant 45
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 45
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::16 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::16) // end: call Output.create 12
@46 // start: push constant 46
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 46
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::17 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::17) // end: call Output.create 12
@47 // start: push constant 47
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 47
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@32 // start: push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 32
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::18 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::18) // end: call Output.create 12
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::19 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::19) // end: call Output.create 12
@49 // start: push constant 49
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 49
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@14 // start: push constant 14
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 14
@15 // start: push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 15
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::20 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::20) // end: call Output.create 12
@50 // start: push constant 50
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 50
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::21 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::21) // end: call Output.create 12
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@28 // start: push constant 28
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 28
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::22 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::22) // end: call Output.create 12
@52 // start: push constant 52
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 52
@16 // start: push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 16
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@28 // start: push constant 28
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 28
@26 // start: push constant 26
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 26
@25 // start: push constant 25
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 25
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@60 // start: push constant 60
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 60
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::23 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::23) // end: call Output.create 12
@53 // start: push constant 53
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 53
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@31 // start: push constant 31
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 31
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::24 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::24) // end: call Output.create 12
@54 // start: push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 54
@28 // start: push constant 28
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 28
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@31 // start: push constant 31
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 31
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::25 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::25) // end: call Output.create 12
@55 // start: push constant 55
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 55
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@49 // start: push constant 49
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 49
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::26 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::26) // end: call Output.create 12
@56 // start: push constant 56
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 56
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::27 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::27) // end: call Output.create 12
@57 // start: push constant 57
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 57
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@62 // start: push constant 62
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 62
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@14 // start: push constant 14
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 14
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::28 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::28) // end: call Output.create 12
@58 // start: push constant 58
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 58
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::29 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::29) // end: call Output.create 12
@59 // start: push constant 59
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 59
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::30 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::30) // end: call Output.create 12
@60 // start: push constant 60
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 60
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::31 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::31) // end: call Output.create 12
@61 // start: push constant 61
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 61
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::32 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::32) // end: call Output.create 12
@62 // start: push constant 62
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 62
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::33 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::33) // end: call Output.create 12
@64 // start: push constant 64
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 64
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@59 // start: push constant 59
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 59
@59 // start: push constant 59
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 59
@59 // start: push constant 59
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 59
@27 // start: push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 27
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::34 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::34) // end: call Output.create 12
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::35 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::35) // end: call Output.create 12
@65 // start: push constant 65
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 65
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::36 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::36) // end: call Output.create 12
@66 // start: push constant 66
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 66
@31 // start: push constant 31
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 31
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@31 // start: push constant 31
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 31
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@31 // start: push constant 31
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 31
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::37 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::37) // end: call Output.create 12
@67 // start: push constant 67
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 67
@28 // start: push constant 28
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 28
@54 // start: push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 54
@35 // start: push constant 35
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 35
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@35 // start: push constant 35
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 35
@54 // start: push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 54
@28 // start: push constant 28
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 28
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::38 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::38) // end: call Output.create 12
@68 // start: push constant 68
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 68
@15 // start: push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 15
@27 // start: push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 27
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@27 // start: push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 27
@15 // start: push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 15
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::39 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::39) // end: call Output.create 12
@69 // start: push constant 69
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 69
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@35 // start: push constant 35
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 35
@11 // start: push constant 11
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 11
@15 // start: push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 15
@11 // start: push constant 11
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 11
@35 // start: push constant 35
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 35
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::40 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::40) // end: call Output.create 12
@70 // start: push constant 70
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 70
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@35 // start: push constant 35
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 35
@11 // start: push constant 11
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 11
@15 // start: push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 15
@11 // start: push constant 11
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 11
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::41 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::41) // end: call Output.create 12
@71 // start: push constant 71
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 71
@28 // start: push constant 28
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 28
@54 // start: push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 54
@35 // start: push constant 35
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 35
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@59 // start: push constant 59
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 59
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@54 // start: push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 54
@44 // start: push constant 44
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 44
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::42 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::42) // end: call Output.create 12
@72 // start: push constant 72
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 72
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::43 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::43) // end: call Output.create 12
@73 // start: push constant 73
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 73
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::44 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::44) // end: call Output.create 12
@74 // start: push constant 74
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 74
@60 // start: push constant 60
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 60
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@27 // start: push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 27
@27 // start: push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 27
@14 // start: push constant 14
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 14
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::45 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::45) // end: call Output.create 12
@75 // start: push constant 75
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 75
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@27 // start: push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 27
@15 // start: push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 15
@27 // start: push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 27
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::46 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::46) // end: call Output.create 12
@76 // start: push constant 76
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 76
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@35 // start: push constant 35
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 35
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::47 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::47) // end: call Output.create 12
@77 // start: push constant 77
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 77
@33 // start: push constant 33
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 33
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::48 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::48) // end: call Output.create 12
@78 // start: push constant 78
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 78
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@55 // start: push constant 55
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 55
@55 // start: push constant 55
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 55
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@59 // start: push constant 59
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 59
@59 // start: push constant 59
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 59
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::49 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::49) // end: call Output.create 12
@79 // start: push constant 79
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 79
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::50 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::50) // end: call Output.create 12
@80 // start: push constant 80
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 80
@31 // start: push constant 31
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 31
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@31 // start: push constant 31
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 31
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::51 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::51) // end: call Output.create 12
@81 // start: push constant 81
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 81
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@59 // start: push constant 59
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 59
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::52 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::52) // end: call Output.create 12
@82 // start: push constant 82
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 82
@31 // start: push constant 31
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 31
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@31 // start: push constant 31
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 31
@27 // start: push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 27
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::53 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::53) // end: call Output.create 12
@83 // start: push constant 83
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 83
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@28 // start: push constant 28
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 28
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::54 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::54) // end: call Output.create 12
@84 // start: push constant 84
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 84
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@45 // start: push constant 45
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 45
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::55 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::55) // end: call Output.create 12
@85 // start: push constant 85
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 85
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::56 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::56) // end: call Output.create 12
@86 // start: push constant 86
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 86
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::57 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::57) // end: call Output.create 12
@87 // start: push constant 87
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 87
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@18 // start: push constant 18
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 18
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::58 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::58) // end: call Output.create 12
@88 // start: push constant 88
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 88
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::59 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::59) // end: call Output.create 12
@89 // start: push constant 89
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 89
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::60 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::60) // end: call Output.create 12
@90 // start: push constant 90
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 90
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@49 // start: push constant 49
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 49
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@35 // start: push constant 35
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 35
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::61 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::61) // end: call Output.create 12
@91 // start: push constant 91
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 91
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::62 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::62) // end: call Output.create 12
@92 // start: push constant 92
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 92
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@32 // start: push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 32
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::63 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::63) // end: call Output.create 12
@93 // start: push constant 93
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 93
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::64 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::64) // end: call Output.create 12
@94 // start: push constant 94
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 94
@8 // start: push constant 8
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 8
@28 // start: push constant 28
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 28
@54 // start: push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 54
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::65 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::65) // end: call Output.create 12
@95 // start: push constant 95
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 95
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::66 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::66) // end: call Output.create 12
@96 // start: push constant 96
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 96
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::67 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::67) // end: call Output.create 12
@97 // start: push constant 97
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 97
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@14 // start: push constant 14
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 14
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@27 // start: push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 27
@27 // start: push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 27
@54 // start: push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 54
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::68 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::68) // end: call Output.create 12
@98 // start: push constant 98
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 98
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@15 // start: push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 15
@27 // start: push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 27
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::69 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::69) // end: call Output.create 12
@99 // start: push constant 99
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 99
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::70 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::70) // end: call Output.create 12
@100 // start: push constant 100
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 100
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@60 // start: push constant 60
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 60
@54 // start: push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 54
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::71 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::71) // end: call Output.create 12
@101 // start: push constant 101
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 101
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::72 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::72) // end: call Output.create 12
@102 // start: push constant 102
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 102
@28 // start: push constant 28
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 28
@54 // start: push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 54
@38 // start: push constant 38
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 38
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@15 // start: push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 15
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@15 // start: push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 15
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::73 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::73) // end: call Output.create 12
@103 // start: push constant 103
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 103
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@62 // start: push constant 62
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 62
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::74 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::74) // end: call Output.create 12
@104 // start: push constant 104
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 104
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@27 // start: push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 27
@55 // start: push constant 55
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 55
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::75 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::75) // end: call Output.create 12
@105 // start: push constant 105
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 105
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@14 // start: push constant 14
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 14
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::76 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::76) // end: call Output.create 12
@106 // start: push constant 106
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 106
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@56 // start: push constant 56
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 56
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::77 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::77) // end: call Output.create 12
@107 // start: push constant 107
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 107
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@27 // start: push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 27
@15 // start: push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 15
@15 // start: push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 15
@27 // start: push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 27
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::78 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::78) // end: call Output.create 12
@108 // start: push constant 108
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 108
@14 // start: push constant 14
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 14
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::79 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::79) // end: call Output.create 12
@109 // start: push constant 109
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 109
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@29 // start: push constant 29
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 29
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@43 // start: push constant 43
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 43
@43 // start: push constant 43
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 43
@43 // start: push constant 43
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 43
@43 // start: push constant 43
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 43
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::80 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::80) // end: call Output.create 12
@110 // start: push constant 110
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 110
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@29 // start: push constant 29
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 29
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::81 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::81) // end: call Output.create 12
@111 // start: push constant 111
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 111
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::82 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::82) // end: call Output.create 12
@112 // start: push constant 112
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 112
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@31 // start: push constant 31
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 31
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::83 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::83) // end: call Output.create 12
@113 // start: push constant 113
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 113
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@62 // start: push constant 62
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 62
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::84 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::84) // end: call Output.create 12
@114 // start: push constant 114
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 114
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@29 // start: push constant 29
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 29
@55 // start: push constant 55
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 55
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@7 // start: push constant 7
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 7
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::85 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::85) // end: call Output.create 12
@115 // start: push constant 115
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 115
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::86 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::86) // end: call Output.create 12
@116 // start: push constant 116
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 116
@4 // start: push constant 4
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 4
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@15 // start: push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 15
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@54 // start: push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 54
@28 // start: push constant 28
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 28
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::87 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::87) // end: call Output.create 12
@117 // start: push constant 117
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 117
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@27 // start: push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 27
@27 // start: push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 27
@27 // start: push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 27
@27 // start: push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 27
@27 // start: push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 27
@54 // start: push constant 54
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 54
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::88 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::88) // end: call Output.create 12
@118 // start: push constant 118
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 118
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::89 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::89) // end: call Output.create 12
@119 // start: push constant 119
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 119
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@18 // start: push constant 18
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 18
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::90 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::90) // end: call Output.create 12
@120 // start: push constant 120
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 120
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@30 // start: push constant 30
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 30
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::91 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::91) // end: call Output.create 12
@121 // start: push constant 121
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 121
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@62 // start: push constant 62
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 62
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@24 // start: push constant 24
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24
@15 // start: push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 15
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::92 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::92) // end: call Output.create 12
@122 // start: push constant 122
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 122
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@27 // start: push constant 27
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 27
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@51 // start: push constant 51
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 51
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::93 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::93) // end: call Output.create 12
@123 // start: push constant 123
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 123
@56 // start: push constant 56
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 56
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@7 // start: push constant 7
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 7
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@56 // start: push constant 56
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 56
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::94 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::94) // end: call Output.create 12
@124 // start: push constant 124
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 124
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::95 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::95) // end: call Output.create 12
@125 // start: push constant 125
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 125
@7 // start: push constant 7
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 7
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@56 // start: push constant 56
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 56
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@7 // start: push constant 7
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 7
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::96 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::96) // end: call Output.create 12
@126 // start: push constant 126
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 126
@38 // start: push constant 38
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 38
@45 // start: push constant 45
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 45
@25 // start: push constant 25
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 25
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::97 // start: call Output.create 12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@17
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.vm::return::97) // end: call Output.create 12
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Output.create) // start: function Output.create 1
@SP
A=M
M=0
@SP
M=M+1 // end: function Output.create 1
@11 // start: push constant 11
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 11
@Output.vm::return::98 // start: call Array.new 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Array.new
0;JMP
(Output.vm::return::98) // end: call Array.new 1
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@static.Output.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@ARG // start: push argument 0 // 148:22
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 148:22
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: push local 0 // 148:31
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 148:31
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@LCL // start: push local 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@ARG // start: push argument 1 // 150:22
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 150:22
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@LCL // start: push local 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@ARG // start: push argument 2 // 151:22
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 2 // 151:22
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@LCL // start: push local 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0
@2 // start: push constant 2
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 2
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@ARG // start: push argument 3 // 152:22
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 3 // 152:22
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@LCL // start: push local 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@ARG // start: push argument 4 // 153:22
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 4 // 153:22
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@LCL // start: push local 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0
@4 // start: push constant 4
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 4
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@ARG // start: push argument 5 // 154:22
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 5 // 154:22
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@LCL // start: push local 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0
@5 // start: push constant 5
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 5
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@ARG // start: push argument 6 // 155:22
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 6 // 155:22
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@LCL // start: push local 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@ARG // start: push argument 7 // 156:22
D=M
@7
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 7 // 156:22
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@LCL // start: push local 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0
@7 // start: push constant 7
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 7
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@ARG // start: push argument 8 // 157:22
D=M
@8
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 8 // 157:22
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@LCL // start: push local 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0
@8 // start: push constant 8
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 8
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@ARG // start: push argument 9 // 158:22
D=M
@9
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 9 // 158:22
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@LCL // start: push local 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0
@9 // start: push constant 9
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 9
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@ARG // start: push argument 10 // 159:22
D=M
@10
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 10 // 159:22
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@LCL // start: push local 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0
@10 // start: push constant 10
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 10
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@ARG // start: push argument 11 // 160:23
D=M
@11
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 11 // 160:23
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Output.getMap) // start: function Output.getMap 0
@SP // end: function Output.getMap 0
@ARG // start: push argument 0 // 169:14
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 169:14
@32 // start: push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 32
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Output.vm::isTrue::99
D;JLT
D=0
@Output.vm::isFalse::100
0;JMP
(Output.vm::isTrue::99)
D=-1
(Output.vm::isFalse::100)
@SP
A=M-1
M=D // end: lt
@ARG // start: push argument 0 // 169:25
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 169:25
@126 // start: push constant 126
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 126
@SP // start: gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Output.vm::isTrue::101
D;JGT
D=0
@Output.vm::isFalse::102
0;JMP
(Output.vm::isTrue::101)
D=-1
(Output.vm::isFalse::102)
@SP
A=M-1
M=D // end: gt
@SP // start: or
M=M-1
A=M
D=M
A=A-1
D=D|M
M=D // end: or
@SP // start: if-goto Output::thenBlock::0
AM=M-1
D=M
@Output::thenBlock::0
D;JNE // end: if-goto Output::thenBlock::0
@Output::endIf::1 // start: goto Output::endIf::1
0;JMP // end: goto Output::endIf::1
(Output::thenBlock::0) // start: label Output::thenBlock::0 // end: label Output::thenBlock::0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: pop argument 0
AM=M-1
D=M
@ARG
A=M
M=D // end: pop argument 0
(Output::endIf::1) // start: label Output::endIf::1 // end: label Output::endIf::1
@static.Output.vm.0 // start: push static 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0
@ARG // start: push argument 0 // 172:25
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 172:25
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@THAT // start: push that 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push that 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Output.moveCursor) // start: function Output.moveCursor 0
@SP // end: function Output.moveCursor 0
@ARG // start: push argument 0 // 178:23
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 178:23
@SP // start: pop static 1
AM=M-1
D=M
@static.Output.vm.1
M=D // end: pop static 1
@ARG // start: push argument 1 // 179:23
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 179:23
@SP // start: pop static 2
AM=M-1
D=M
@static.Output.vm.2
M=D // end: pop static 2
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Output.printCharImpl) // start: function Output.printCharImpl 6
@SP
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1 // end: function Output.printCharImpl 6
@ARG // start: push argument 0 // 187:33
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 187:33
@Output.vm::return::103 // start: call Output.getMap 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Output.getMap
0;JMP
(Output.vm::return::103) // end: call Output.getMap 1
@LCL // start: pop local 1
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 1
@16384 // start: push constant 16384
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 16384
@static.Output.vm.1 // start: push static 1 // 188:42
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1 // 188:42
@2 // start: push constant 2
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 2
@Output.vm::return::104 // start: call Math.divide 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@Math.divide
0;JMP
(Output.vm::return::104) // end: call Math.divide 2
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@static.Output.vm.2 // start: push static 2 // 188:70
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 2 // 188:70
@352 // start: push constant 352
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 352
@Output.vm::return::105 // start: call Math.multiply 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Output.vm::return::105) // end: call Math.multiply 2
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: pop local 2
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 2
@static.Output.vm.1 // start: push static 1 // 189:28
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1 // 189:28
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::106 // start: call Math.bit 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@Math.bit
0;JMP
(Output.vm::return::106) // end: call Math.bit 2
@LCL // start: pop local 3
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 3
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@Output::startWhile::2 // start: goto Output::startWhile::2
0;JMP // end: goto Output::startWhile::2
(Output::whileBlock::3) // start: label Output::whileBlock::3 // end: label Output::whileBlock::3
@LCL // start: push local 2 // 192:25
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 192:25
@LCL // start: push local 0 // 192:48
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 192:48
@32 // start: push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 32
@Output.vm::return::107 // start: call Math.multiply 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Output.vm::return::107) // end: call Math.multiply 2
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: pop local 4
D=M
@4
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 4
@LCL // start: push local 3 // 193:17
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 3 // 193:17
@SP // start: if-goto Output::thenBlock::4
AM=M-1
D=M
@Output::thenBlock::4
D;JNE // end: if-goto Output::thenBlock::4
@LCL // start: push local 4 // 197:43
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 4 // 197:43
@Output.vm::return::108 // start: call Memory.peek 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Memory.peek
0;JMP
(Output.vm::return::108) // end: call Memory.peek 1
@255 // start: push constant 255
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 255
@SP // start: not
A=M-1
D=M
M=!D // end: not
@SP // start: and
M=M-1
A=M
D=M
A=A-1
D=D&M
M=D // end: and
@LCL // start: pop local 5
D=M
@5
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 5
@LCL // start: push local 4 // 198:32
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 4 // 198:32
@LCL // start: push local 1
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1
@LCL // start: push local 0 // 198:43
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 198:43
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@THAT // start: push that 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push that 0
@LCL // start: push local 5 // 198:48
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 5 // 198:48
@SP // start: or
M=M-1
A=M
D=M
A=A-1
D=D|M
M=D // end: or
@Output.vm::return::109 // start: call Memory.poke 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@Memory.poke
0;JMP
(Output.vm::return::109) // end: call Memory.poke 2
@Output::endIf::5 // start: goto Output::endIf::5
0;JMP // end: goto Output::endIf::5
(Output::thenBlock::4) // start: label Output::thenBlock::4 // end: label Output::thenBlock::4
@LCL // start: push local 4 // 194:43
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 4 // 194:43
@Output.vm::return::110 // start: call Memory.peek 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Memory.peek
0;JMP
(Output.vm::return::110) // end: call Memory.peek 1
@255 // start: push constant 255
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 255
@SP // start: and
M=M-1
A=M
D=M
A=A-1
D=D&M
M=D // end: and
@LCL // start: pop local 5
D=M
@5
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 5
@LCL // start: push local 4 // 195:32
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 4 // 195:32
@LCL // start: push local 1
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1
@LCL // start: push local 0 // 195:57
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 195:57
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@THAT // start: push that 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push that 0
@256 // start: push constant 256
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 256
@Output.vm::return::111 // start: call Math.multiply 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Output.vm::return::111) // end: call Math.multiply 2
@LCL // start: push local 5 // 195:68
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 5 // 195:68
@SP // start: or
M=M-1
A=M
D=M
A=A-1
D=D|M
M=D // end: or
@Output.vm::return::112 // start: call Memory.poke 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@Memory.poke
0;JMP
(Output.vm::return::112) // end: call Memory.poke 2
(Output::endIf::5) // start: label Output::endIf::5 // end: label Output::endIf::5
@LCL // start: push local 0 // 200:21
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 200:21
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
(Output::startWhile::2) // start: label Output::startWhile::2 // end: label Output::startWhile::2
@LCL // start: push local 0 // 191:16
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 191:16
@11 // start: push constant 11
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 11
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Output.vm::isTrue::113
D;JLT
D=0
@Output.vm::isFalse::114
0;JMP
(Output.vm::isTrue::113)
D=-1
(Output.vm::isFalse::114)
@SP
A=M-1
M=D // end: lt
@SP // start: if-goto Output::whileBlock::3
AM=M-1
D=M
@Output::whileBlock::3
D;JNE // end: if-goto Output::whileBlock::3
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Output.printChar) // start: function Output.printChar 0
@SP // end: function Output.printChar 0
@ARG // start: push argument 0 // 205:13
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 205:13
@Output.vm::return::115 // start: call String.newLine 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@5
D=D-A
@ARG
M=D
@String.newLine
0;JMP
(Output.vm::return::115) // end: call String.newLine 0
@SP // start: eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@Output.vm::isZero::116
D;JEQ
D=-1
(Output.vm::isZero::116)
@SP
A=M-1
M=!D // end: eq
@SP // start: if-goto Output::thenBlock::6
AM=M-1
D=M
@Output::thenBlock::6
D;JNE // end: if-goto Output::thenBlock::6
@Output::endIf::7 // start: goto Output::endIf::7
0;JMP // end: goto Output::endIf::7
(Output::thenBlock::6) // start: label Output::thenBlock::6 // end: label Output::thenBlock::6
@Output.vm::return::117 // start: call Output.println 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@5
D=D-A
@ARG
M=D
@Output.println
0;JMP
(Output.vm::return::117) // end: call Output.println 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Output::endIf::7) // start: label Output::endIf::7 // end: label Output::endIf::7
@ARG // start: push argument 0 // 210:13
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 210:13
@Output.vm::return::118 // start: call String.backSpace 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@5
D=D-A
@ARG
M=D
@String.backSpace
0;JMP
(Output.vm::return::118) // end: call String.backSpace 0
@SP // start: eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@Output.vm::isZero::119
D;JEQ
D=-1
(Output.vm::isZero::119)
@SP
A=M-1
M=!D // end: eq
@SP // start: if-goto Output::thenBlock::8
AM=M-1
D=M
@Output::thenBlock::8
D;JNE // end: if-goto Output::thenBlock::8
@Output::endIf::9 // start: goto Output::endIf::9
0;JMP // end: goto Output::endIf::9
(Output::thenBlock::8) // start: label Output::thenBlock::8 // end: label Output::thenBlock::8
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Output::endIf::9) // start: label Output::endIf::9 // end: label Output::endIf::9
@ARG // start: push argument 0 // 214:33
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 214:33
@Output.vm::return::120 // start: call Output.printCharImpl 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Output.printCharImpl
0;JMP
(Output.vm::return::120) // end: call Output.printCharImpl 1
@static.Output.vm.1 // start: push static 1 // 216:23
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1 // 216:23
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop static 1
AM=M-1
D=M
@static.Output.vm.1
M=D // end: pop static 1
@static.Output.vm.1 // start: push static 1 // 217:13
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1 // 217:13
@63 // start: push constant 63
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 63
@SP // start: gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Output.vm::isTrue::121
D;JGT
D=0
@Output.vm::isFalse::122
0;JMP
(Output.vm::isTrue::121)
D=-1
(Output.vm::isFalse::122)
@SP
A=M-1
M=D // end: gt
@SP // start: if-goto Output::thenBlock::10
AM=M-1
D=M
@Output::thenBlock::10
D;JNE // end: if-goto Output::thenBlock::10
@Output::endIf::11 // start: goto Output::endIf::11
0;JMP // end: goto Output::endIf::11
(Output::thenBlock::10) // start: label Output::thenBlock::10 // end: label Output::thenBlock::10
@Output.vm::return::123 // start: call Output.println 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@5
D=D-A
@ARG
M=D
@Output.println
0;JMP
(Output.vm::return::123) // end: call Output.println 0
(Output::endIf::11) // start: label Output::endIf::11 // end: label Output::endIf::11
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Output.printString) // start: function Output.printString 1
@SP
A=M
M=0
@SP
M=M+1 // end: function Output.printString 1
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@Output::startWhile::12 // start: goto Output::startWhile::12
0;JMP // end: goto Output::startWhile::12
(Output::whileBlock::13) // start: label Output::whileBlock::13 // end: label Output::whileBlock::13
@ARG // start: push argument 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0
@LCL // start: push local 0 // 228:42
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 228:42
@Output.vm::return::124 // start: call String.charAt 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@String.charAt
0;JMP
(Output.vm::return::124) // end: call String.charAt 2
@Output.vm::return::125 // start: call Output.printChar 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Output.printChar
0;JMP
(Output.vm::return::125) // end: call Output.printChar 1
@LCL // start: push local 0 // 229:21
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 229:21
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
(Output::startWhile::12) // start: label Output::startWhile::12 // end: label Output::startWhile::12
@LCL // start: push local 0 // 227:16
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 227:16
@ARG // start: push argument 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0
@Output.vm::return::126 // start: call String.length 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@String.length
0;JMP
(Output.vm::return::126) // end: call String.length 1
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Output.vm::isTrue::127
D;JLT
D=0
@Output.vm::isFalse::128
0;JMP
(Output.vm::isTrue::127)
D=-1
(Output.vm::isFalse::128)
@SP
A=M-1
M=D // end: lt
@SP // start: if-goto Output::whileBlock::13
AM=M-1
D=M
@Output::whileBlock::13
D;JNE // end: if-goto Output::whileBlock::13
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Output.printInt) // start: function Output.printInt 1
@SP
A=M
M=0
@SP
M=M+1 // end: function Output.printInt 1
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@Output.vm::return::129 // start: call String.new 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@String.new
0;JMP
(Output.vm::return::129) // end: call String.new 1
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@LCL // start: push local 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0
@ARG // start: push argument 0 // 238:23
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 238:23
@Output.vm::return::130 // start: call String.setInt 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@String.setInt
0;JMP
(Output.vm::return::130) // end: call String.setInt 2
@LCL // start: push local 0 // 239:31
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 239:31
@Output.vm::return::131 // start: call Output.printString 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Output.printString
0;JMP
(Output.vm::return::131) // end: call Output.printString 1
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Output.println) // start: function Output.println 0
@SP // end: function Output.println 0
@32 // start: push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 32
@Output.vm::return::132 // start: call Output.printCharImpl 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Output.printCharImpl
0;JMP
(Output.vm::return::132) // end: call Output.printCharImpl 1
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: pop static 1
AM=M-1
D=M
@static.Output.vm.1
M=D // end: pop static 1
@static.Output.vm.2 // start: push static 2 // 246:23
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 2 // 246:23
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop static 2
AM=M-1
D=M
@static.Output.vm.2
M=D // end: pop static 2
@static.Output.vm.2 // start: push static 2 // 247:13
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 2 // 247:13
@22 // start: push constant 22
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 22
@SP // start: gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Output.vm::isTrue::133
D;JGT
D=0
@Output.vm::isFalse::134
0;JMP
(Output.vm::isTrue::133)
D=-1
(Output.vm::isFalse::134)
@SP
A=M-1
M=D // end: gt
@SP // start: if-goto Output::thenBlock::14
AM=M-1
D=M
@Output::thenBlock::14
D;JNE // end: if-goto Output::thenBlock::14
@Output::endIf::15 // start: goto Output::endIf::15
0;JMP // end: goto Output::endIf::15
(Output::thenBlock::14) // start: label Output::thenBlock::14 // end: label Output::thenBlock::14
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: pop static 2
AM=M-1
D=M
@static.Output.vm.2
M=D // end: pop static 2
(Output::endIf::15) // start: label Output::endIf::15 // end: label Output::endIf::15
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Output.backSpace) // start: function Output.backSpace 0
@SP // end: function Output.backSpace 0
@static.Output.vm.1 // start: push static 1 // 254:13
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1 // 254:13
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Output.vm::isTrue::135
D;JGT
D=0
@Output.vm::isFalse::136
0;JMP
(Output.vm::isTrue::135)
D=-1
(Output.vm::isFalse::136)
@SP
A=M-1
M=D // end: gt
@SP // start: if-goto Output::thenBlock::16
AM=M-1
D=M
@Output::thenBlock::16
D;JNE // end: if-goto Output::thenBlock::16
@Output::endIf::17 // start: goto Output::endIf::17
0;JMP // end: goto Output::endIf::17
(Output::thenBlock::16) // start: label Output::thenBlock::16 // end: label Output::thenBlock::16
@32 // start: push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 32
@Output.vm::return::137 // start: call Output.printCharImpl 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Output.printCharImpl
0;JMP
(Output.vm::return::137) // end: call Output.printCharImpl 1
@static.Output.vm.1 // start: push static 1 // 256:27
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1 // 256:27
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: sub
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D // end: sub
@SP // start: pop static 1
AM=M-1
D=M
@static.Output.vm.1
M=D // end: pop static 1
@32 // start: push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 32
@Output.vm::return::138 // start: call Output.printCharImpl 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Output.printCharImpl
0;JMP
(Output.vm::return::138) // end: call Output.printCharImpl 1
(Output::endIf::17) // start: label Output::endIf::17 // end: label Output::endIf::17
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Output.displayCursor) // start: function Output.displayCursor 0
@SP // end: function Output.displayCursor 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Output.vm::return::139 // start: call Output.printCharImpl 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Output.printCharImpl
0;JMP
(Output.vm::return::139) // end: call Output.printCharImpl 1
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Screen.init) // start: function Screen.init 0
@SP // end: function Screen.init 0
@16 // start: push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 16
@Screen.vm::return::0 // start: call Array.new 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Array.new
0;JMP
(Screen.vm::return::0) // end: call Array.new 1
@SP // start: pop static 1
AM=M-1
D=M
@static.Screen.vm.1
M=D // end: pop static 1
@static.Screen.vm.1 // start: push static 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Screen.vm.1 // start: push static 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@2 // start: push constant 2
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 2
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Screen.vm.1 // start: push static 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1
@2 // start: push constant 2
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 2
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@4 // start: push constant 4
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 4
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Screen.vm.1 // start: push static 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@8 // start: push constant 8
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 8
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Screen.vm.1 // start: push static 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1
@4 // start: push constant 4
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 4
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@16 // start: push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 16
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Screen.vm.1 // start: push static 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1
@5 // start: push constant 5
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 5
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@32 // start: push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 32
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Screen.vm.1 // start: push static 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1
@6 // start: push constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 6
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@64 // start: push constant 64
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 64
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Screen.vm.1 // start: push static 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1
@7 // start: push constant 7
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 7
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@128 // start: push constant 128
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 128
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Screen.vm.1 // start: push static 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1
@8 // start: push constant 8
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 8
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@256 // start: push constant 256
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 256
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Screen.vm.1 // start: push static 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1
@9 // start: push constant 9
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 9
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@512 // start: push constant 512
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 512
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Screen.vm.1 // start: push static 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1
@10 // start: push constant 10
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 10
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@1024 // start: push constant 1024
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1024
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Screen.vm.1 // start: push static 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1
@11 // start: push constant 11
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 11
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@2048 // start: push constant 2048
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 2048
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Screen.vm.1 // start: push static 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1
@12 // start: push constant 12
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 12
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@4096 // start: push constant 4096
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 4096
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Screen.vm.1 // start: push static 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1
@13 // start: push constant 13
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 13
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@8192 // start: push constant 8192
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 8192
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Screen.vm.1 // start: push static 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1
@14 // start: push constant 14
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 14
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@16384 // start: push constant 16384
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 16384
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@static.Screen.vm.1 // start: push static 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1
@15 // start: push constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 15
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@32767 // start: push constant 32767
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 32767
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: not
A=M-1
D=M
M=!D // end: not
@SP // start: pop static 0
AM=M-1
D=M
@static.Screen.vm.0
M=D // end: pop static 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: pop static 2
AM=M-1
D=M
@static.Screen.vm.2
M=D // end: pop static 2
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Screen.clearScreen) // start: function Screen.clearScreen 1
@SP
A=M
M=0
@SP
M=M+1 // end: function Screen.clearScreen 1
@16384 // start: push constant 16384
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 16384
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@Screen::startWhile::0 // start: goto Screen::startWhile::0
0;JMP // end: goto Screen::startWhile::0
(Screen::whileBlock::1) // start: label Screen::whileBlock::1 // end: label Screen::whileBlock::1
@static.Screen.vm.2 // start: push static 2
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 2
@LCL // start: push local 0 // 41:21
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 41:21
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@LCL // start: push local 0 // 42:21
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 42:21
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
(Screen::startWhile::0) // start: label Screen::startWhile::0 // end: label Screen::startWhile::0
@LCL // start: push local 0 // 40:18
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 40:18
@24576 // start: push constant 24576
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 24576
@SP // start: gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Screen.vm::isTrue::1
D;JGT
D=0
@Screen.vm::isFalse::2
0;JMP
(Screen.vm::isTrue::1)
D=-1
(Screen.vm::isFalse::2)
@SP
A=M-1
M=D // end: gt
@SP // start: not
A=M-1
D=M
M=!D // end: not
@SP // start: if-goto Screen::whileBlock::1
AM=M-1
D=M
@Screen::whileBlock::1
D;JNE // end: if-goto Screen::whileBlock::1
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Screen.setColor) // start: function Screen.setColor 0
@SP // end: function Screen.setColor 0
@ARG // start: push argument 0 // 50:21
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 50:21
@SP // start: pop static 0
AM=M-1
D=M
@static.Screen.vm.0
M=D // end: pop static 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Screen.drawPixel) // start: function Screen.drawPixel 3
@SP
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1 // end: function Screen.drawPixel 3
@32 // start: push constant 32
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 32
@ARG // start: push argument 1 // 57:41
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 57:41
@Screen.vm::return::3 // start: call Math.multiply 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Screen.vm::return::3) // end: call Math.multiply 2
@ARG // start: push argument 0 // 57:59
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 57:59
@16 // start: push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 16
@Screen.vm::return::4 // start: call Math.divide 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@Math.divide
0;JMP
(Screen.vm::return::4) // end: call Math.divide 2
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@16384 // start: push constant 16384
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 16384
@LCL // start: push local 0 // 58:41
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 58:41
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@Screen.vm::return::5 // start: call Memory.peek 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Memory.peek
0;JMP
(Screen.vm::return::5) // end: call Memory.peek 1
@LCL // start: pop local 1
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 1
@ARG // start: push argument 0 // 60:23
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 60:23
@LCL // start: pop local 2
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 2
@Screen::startWhile::2 // start: goto Screen::startWhile::2
0;JMP // end: goto Screen::startWhile::2
(Screen::whileBlock::3) // start: label Screen::whileBlock::3 // end: label Screen::whileBlock::3
@LCL // start: push local 2 // 62:27
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 62:27
@16 // start: push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 16
@SP // start: sub
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D // end: sub
@LCL // start: pop local 2
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 2
(Screen::startWhile::2) // start: label Screen::startWhile::2 // end: label Screen::startWhile::2
@LCL // start: push local 2 // 61:18
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 61:18
@16 // start: push constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 16
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Screen.vm::isTrue::6
D;JLT
D=0
@Screen.vm::isFalse::7
0;JMP
(Screen.vm::isTrue::6)
D=-1
(Screen.vm::isFalse::7)
@SP
A=M-1
M=D // end: lt
@SP // start: not
A=M-1
D=M
M=!D // end: not
@SP // start: if-goto Screen::whileBlock::3
AM=M-1
D=M
@Screen::whileBlock::3
D;JNE // end: if-goto Screen::whileBlock::3
@static.Screen.vm.0 // start: push static 0 // 65:13
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 0 // 65:13
@SP // start: if-goto Screen::thenBlock::4
AM=M-1
D=M
@Screen::thenBlock::4
D;JNE // end: if-goto Screen::thenBlock::4
@LCL // start: push local 1 // 68:25
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 68:25
@static.Screen.vm.1 // start: push static 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1
@LCL // start: push local 2 // 68:45
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 68:45
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@THAT // start: push that 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push that 0
@SP // start: not
A=M-1
D=M
M=!D // end: not
@SP // start: and
M=M-1
A=M
D=M
A=A-1
D=D&M
M=D // end: and
@LCL // start: pop local 1
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 1
@Screen::endIf::5 // start: goto Screen::endIf::5
0;JMP // end: goto Screen::endIf::5
(Screen::thenBlock::4) // start: label Screen::thenBlock::4 // end: label Screen::thenBlock::4
@LCL // start: push local 1 // 66:25
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 66:25
@static.Screen.vm.1 // start: push static 1
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push static 1
@LCL // start: push local 2 // 66:42
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 66:42
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@THAT // start: push that 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push that 0
@SP // start: or
M=M-1
A=M
D=M
A=A-1
D=D|M
M=D // end: or
@LCL // start: pop local 1
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 1
(Screen::endIf::5) // start: label Screen::endIf::5 // end: label Screen::endIf::5
@16384 // start: push constant 16384
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 16384
@LCL // start: push local 0 // 71:32
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 71:32
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: push local 1 // 71:41
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 71:41
@Screen.vm::return::8 // start: call Memory.poke 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@Memory.poke
0;JMP
(Screen.vm::return::8) // end: call Memory.poke 2
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Screen.drawLine) // start: function Screen.drawLine 0
@SP // end: function Screen.drawLine 0
@ARG // start: push argument 3 // 76:22
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 3 // 76:22
@ARG // start: push argument 1 // 76:27
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 76:27
@SP // start: sub
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D // end: sub
@Screen.vm::return::9 // start: call Math.abs 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Math.abs
0;JMP
(Screen.vm::return::9) // end: call Math.abs 1
@ARG // start: push argument 2 // 76:42
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 2 // 76:42
@ARG // start: push argument 0 // 76:47
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 76:47
@SP // start: sub
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D // end: sub
@Screen.vm::return::10 // start: call Math.abs 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Math.abs
0;JMP
(Screen.vm::return::10) // end: call Math.abs 1
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Screen.vm::isTrue::11
D;JLT
D=0
@Screen.vm::isFalse::12
0;JMP
(Screen.vm::isTrue::11)
D=-1
(Screen.vm::isFalse::12)
@SP
A=M-1
M=D // end: lt
@SP // start: if-goto Screen::thenBlock::6
AM=M-1
D=M
@Screen::thenBlock::6
D;JNE // end: if-goto Screen::thenBlock::6
@ARG // start: push argument 1 // 83:17
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 83:17
@ARG // start: push argument 3 // 83:22
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 3 // 83:22
@SP // start: gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Screen.vm::isTrue::13
D;JGT
D=0
@Screen.vm::isFalse::14
0;JMP
(Screen.vm::isTrue::13)
D=-1
(Screen.vm::isFalse::14)
@SP
A=M-1
M=D // end: gt
@SP // start: if-goto Screen::thenBlock::8
AM=M-1
D=M
@Screen::thenBlock::8
D;JNE // end: if-goto Screen::thenBlock::8
@ARG // start: push argument 1 // 86:40
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 86:40
@ARG // start: push argument 0 // 86:44
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 86:44
@ARG // start: push argument 3 // 86:48
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 3 // 86:48
@ARG // start: push argument 2 // 86:52
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 2 // 86:52
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: not
A=M-1
D=M
M=!D // end: not
@Screen.vm::return::15 // start: call Screen.drawLineImpl 5
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@10
D=D-A
@ARG
M=D
@Screen.drawLineImpl
0;JMP
(Screen.vm::return::15) // end: call Screen.drawLineImpl 5
@Screen::endIf::9 // start: goto Screen::endIf::9
0;JMP // end: goto Screen::endIf::9
(Screen::thenBlock::8) // start: label Screen::thenBlock::8 // end: label Screen::thenBlock::8
@ARG // start: push argument 3 // 84:40
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 3 // 84:40
@ARG // start: push argument 2 // 84:44
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 2 // 84:44
@ARG // start: push argument 1 // 84:48
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 84:48
@ARG // start: push argument 0 // 84:52
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 84:52
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: not
A=M-1
D=M
M=!D // end: not
@Screen.vm::return::16 // start: call Screen.drawLineImpl 5
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@10
D=D-A
@ARG
M=D
@Screen.drawLineImpl
0;JMP
(Screen.vm::return::16) // end: call Screen.drawLineImpl 5
(Screen::endIf::9) // start: label Screen::endIf::9 // end: label Screen::endIf::9
@Screen::endIf::7 // start: goto Screen::endIf::7
0;JMP // end: goto Screen::endIf::7
(Screen::thenBlock::6) // start: label Screen::thenBlock::6 // end: label Screen::thenBlock::6
@ARG // start: push argument 0 // 77:17
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 77:17
@ARG // start: push argument 2 // 77:22
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 2 // 77:22
@SP // start: gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Screen.vm::isTrue::17
D;JGT
D=0
@Screen.vm::isFalse::18
0;JMP
(Screen.vm::isTrue::17)
D=-1
(Screen.vm::isFalse::18)
@SP
A=M-1
M=D // end: gt
@SP // start: if-goto Screen::thenBlock::10
AM=M-1
D=M
@Screen::thenBlock::10
D;JNE // end: if-goto Screen::thenBlock::10
@ARG // start: push argument 0 // 80:40
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 80:40
@ARG // start: push argument 1 // 80:44
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 80:44
@ARG // start: push argument 2 // 80:48
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 2 // 80:48
@ARG // start: push argument 3 // 80:52
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 3 // 80:52
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Screen.vm::return::19 // start: call Screen.drawLineImpl 5
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@10
D=D-A
@ARG
M=D
@Screen.drawLineImpl
0;JMP
(Screen.vm::return::19) // end: call Screen.drawLineImpl 5
@Screen::endIf::11 // start: goto Screen::endIf::11
0;JMP // end: goto Screen::endIf::11
(Screen::thenBlock::10) // start: label Screen::thenBlock::10 // end: label Screen::thenBlock::10
@ARG // start: push argument 2 // 78:40
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 2 // 78:40
@ARG // start: push argument 3 // 78:44
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 3 // 78:44
@ARG // start: push argument 0 // 78:48
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 78:48
@ARG // start: push argument 1 // 78:52
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 78:52
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@Screen.vm::return::20 // start: call Screen.drawLineImpl 5
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@10
D=D-A
@ARG
M=D
@Screen.drawLineImpl
0;JMP
(Screen.vm::return::20) // end: call Screen.drawLineImpl 5
(Screen::endIf::11) // start: label Screen::endIf::11 // end: label Screen::endIf::11
(Screen::endIf::7) // start: label Screen::endIf::7 // end: label Screen::endIf::7
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Screen.drawLineImpl) // start: function Screen.drawLineImpl 6
@SP
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1 // end: function Screen.drawLineImpl 6
@ARG // start: push argument 2 // 96:18
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 2 // 96:18
@ARG // start: push argument 0 // 96:23
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 96:23
@SP // start: sub
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D // end: sub
@LCL // start: pop local 3
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 3
@ARG // start: push argument 3 // 97:18
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 3 // 97:18
@ARG // start: push argument 1 // 97:23
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 97:23
@SP // start: sub
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D // end: sub
@LCL // start: pop local 4
D=M
@4
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 4
@ARG // start: push argument 0 // 98:17
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 98:17
@LCL // start: pop local 1
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 1
@ARG // start: push argument 1 // 99:17
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 99:17
@LCL // start: pop local 2
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 2
@LCL // start: push local 4 // 100:18
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 4 // 100:18
@LCL // start: push local 4 // 100:23
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 4 // 100:23
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: push local 3 // 100:29
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 3 // 100:29
@SP // start: sub
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D // end: sub
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@LCL // start: pop local 5
D=M
@5
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 5
@LCL // start: push local 4 // 103:13
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 4 // 103:13
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Screen.vm::isTrue::21
D;JLT
D=0
@Screen.vm::isFalse::22
0;JMP
(Screen.vm::isTrue::21)
D=-1
(Screen.vm::isFalse::22)
@SP
A=M-1
M=D // end: lt
@SP // start: if-goto Screen::thenBlock::12
AM=M-1
D=M
@Screen::thenBlock::12
D;JNE // end: if-goto Screen::thenBlock::12
@Screen::endIf::13 // start: goto Screen::endIf::13
0;JMP // end: goto Screen::endIf::13
(Screen::thenBlock::12) // start: label Screen::thenBlock::12 // end: label Screen::thenBlock::12
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: neg
A=M-1
D=M
M=-D // end: neg
@LCL // start: pop local 5
D=M
@5
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 5
@LCL // start: push local 4 // 105:23
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 4 // 105:23
@SP // start: neg
A=M-1
D=M
M=-D // end: neg
@LCL // start: pop local 4
D=M
@4
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 4
(Screen::endIf::13) // start: label Screen::endIf::13 // end: label Screen::endIf::13
@Screen::startWhile::14 // start: goto Screen::startWhile::14
0;JMP // end: goto Screen::startWhile::14
(Screen::whileBlock::15) // start: label Screen::whileBlock::15 // end: label Screen::whileBlock::15
@ARG // start: push argument 4 // 109:17
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 4 // 109:17
@SP // start: if-goto Screen::thenBlock::16
AM=M-1
D=M
@Screen::thenBlock::16
D;JNE // end: if-goto Screen::thenBlock::16
@LCL // start: push local 1 // 112:37
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 112:37
@LCL // start: push local 2 // 112:40
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 112:40
@Screen.vm::return::23 // start: call Screen.drawPixel 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@Screen.drawPixel
0;JMP
(Screen.vm::return::23) // end: call Screen.drawPixel 2
@Screen::endIf::17 // start: goto Screen::endIf::17
0;JMP // end: goto Screen::endIf::17
(Screen::thenBlock::16) // start: label Screen::thenBlock::16 // end: label Screen::thenBlock::16
@LCL // start: push local 2 // 110:37
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 110:37
@LCL // start: push local 1 // 110:40
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 110:40
@Screen.vm::return::24 // start: call Screen.drawPixel 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@Screen.drawPixel
0;JMP
(Screen.vm::return::24) // end: call Screen.drawPixel 2
(Screen::endIf::17) // start: label Screen::endIf::17 // end: label Screen::endIf::17
@LCL // start: push local 0 // 115:17
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 115:17
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Screen.vm::isTrue::25
D;JGT
D=0
@Screen.vm::isFalse::26
0;JMP
(Screen.vm::isTrue::25)
D=-1
(Screen.vm::isFalse::26)
@SP
A=M-1
M=D // end: gt
@SP // start: if-goto Screen::thenBlock::18
AM=M-1
D=M
@Screen::thenBlock::18
D;JNE // end: if-goto Screen::thenBlock::18
@Screen::endIf::19 // start: goto Screen::endIf::19
0;JMP // end: goto Screen::endIf::19
(Screen::thenBlock::18) // start: label Screen::thenBlock::18 // end: label Screen::thenBlock::18
@LCL // start: push local 2 // 116:25
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 116:25
@LCL // start: push local 5 // 116:29
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 5 // 116:29
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: pop local 2
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 2
@LCL // start: push local 0 // 117:25
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 117:25
@LCL // start: push local 3 // 117:30
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 3 // 117:30
@LCL // start: push local 3 // 117:35
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 3 // 117:35
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: sub
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D // end: sub
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
(Screen::endIf::19) // start: label Screen::endIf::19 // end: label Screen::endIf::19
@LCL // start: push local 0 // 120:21
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 120:21
@LCL // start: push local 4 // 120:25
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 4 // 120:25
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: push local 4 // 120:30
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 4 // 120:30
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@LCL // start: push local 1 // 121:21
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 121:21
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: pop local 1
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 1
(Screen::startWhile::14) // start: label Screen::startWhile::14 // end: label Screen::startWhile::14
@LCL // start: push local 1 // 108:18
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 108:18
@ARG // start: push argument 2 // 108:22
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 2 // 108:22
@SP // start: gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Screen.vm::isTrue::27
D;JGT
D=0
@Screen.vm::isFalse::28
0;JMP
(Screen.vm::isTrue::27)
D=-1
(Screen.vm::isFalse::28)
@SP
A=M-1
M=D // end: gt
@SP // start: not
A=M-1
D=M
M=!D // end: not
@SP // start: if-goto Screen::whileBlock::15
AM=M-1
D=M
@Screen::whileBlock::15
D;JNE // end: if-goto Screen::whileBlock::15
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Screen.drawRectangle) // start: function Screen.drawRectangle 2
@SP
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1 // end: function Screen.drawRectangle 2
@ARG // start: push argument 1 // 132:17
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 132:17
@LCL // start: pop local 1
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 1
@Screen::startWhile::20 // start: goto Screen::startWhile::20
0;JMP // end: goto Screen::startWhile::20
(Screen::whileBlock::21) // start: label Screen::whileBlock::21 // end: label Screen::whileBlock::21
@ARG // start: push argument 0 // 134:21
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 134:21
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@Screen::startWhile::22 // start: goto Screen::startWhile::22
0;JMP // end: goto Screen::startWhile::22
(Screen::whileBlock::23) // start: label Screen::whileBlock::23 // end: label Screen::whileBlock::23
@LCL // start: push local 0 // 136:37
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 136:37
@LCL // start: push local 1 // 136:40
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 136:40
@Screen.vm::return::29 // start: call Screen.drawPixel 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@Screen.drawPixel
0;JMP
(Screen.vm::return::29) // end: call Screen.drawPixel 2
@LCL // start: push local 0 // 137:25
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 137:25
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
(Screen::startWhile::22) // start: label Screen::startWhile::22 // end: label Screen::startWhile::22
@LCL // start: push local 0 // 135:22
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 135:22
@ARG // start: push argument 2 // 135:26
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 2 // 135:26
@SP // start: gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Screen.vm::isTrue::30
D;JGT
D=0
@Screen.vm::isFalse::31
0;JMP
(Screen.vm::isTrue::30)
D=-1
(Screen.vm::isFalse::31)
@SP
A=M-1
M=D // end: gt
@SP // start: not
A=M-1
D=M
M=!D // end: not
@SP // start: if-goto Screen::whileBlock::23
AM=M-1
D=M
@Screen::whileBlock::23
D;JNE // end: if-goto Screen::whileBlock::23
@LCL // start: push local 1 // 139:21
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 139:21
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: pop local 1
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 1
(Screen::startWhile::20) // start: label Screen::startWhile::20 // end: label Screen::startWhile::20
@LCL // start: push local 1 // 133:18
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 133:18
@ARG // start: push argument 3 // 133:22
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 3 // 133:22
@SP // start: gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Screen.vm::isTrue::32
D;JGT
D=0
@Screen.vm::isFalse::33
0;JMP
(Screen.vm::isTrue::32)
D=-1
(Screen.vm::isFalse::33)
@SP
A=M-1
M=D // end: gt
@SP // start: not
A=M-1
D=M
M=!D // end: not
@SP // start: if-goto Screen::whileBlock::21
AM=M-1
D=M
@Screen::whileBlock::21
D;JNE // end: if-goto Screen::whileBlock::21
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Screen.drawCircle) // start: function Screen.drawCircle 2
@SP
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1 // end: function Screen.drawCircle 2
@ARG // start: push argument 2 // 147:19
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 2 // 147:19
@SP // start: neg
A=M-1
D=M
M=-D // end: neg
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@Screen::startWhile::24 // start: goto Screen::startWhile::24
0;JMP // end: goto Screen::startWhile::24
(Screen::whileBlock::25) // start: label Screen::whileBlock::25 // end: label Screen::whileBlock::25
@ARG // start: push argument 2 // 149:46
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 2 // 149:46
@ARG // start: push argument 2 // 149:49
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 2 // 149:49
@Screen.vm::return::34 // start: call Math.multiply 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Screen.vm::return::34) // end: call Math.multiply 2
@LCL // start: push local 0 // 149:68
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 149:68
@LCL // start: push local 0 // 149:72
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 149:72
@Screen.vm::return::35 // start: call Math.multiply 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Screen.vm::return::35) // end: call Math.multiply 2
@SP // start: sub
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D // end: sub
@Screen.vm::return::36 // start: call Math.sqrt 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Math.sqrt
0;JMP
(Screen.vm::return::36) // end: call Math.sqrt 1
@LCL // start: pop local 1
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 1
@ARG // start: push argument 0 // 150:32
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 150:32
@LCL // start: push local 1 // 150:36
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 150:36
@SP // start: sub
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D // end: sub
@ARG // start: push argument 1 // 150:40
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 150:40
@LCL // start: push local 0 // 150:44
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 150:44
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@ARG // start: push argument 0 // 150:48
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 150:48
@LCL // start: push local 1 // 150:52
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 150:52
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@ARG // start: push argument 1 // 150:56
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 150:56
@LCL // start: push local 0 // 150:60
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 150:60
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@Screen.vm::return::37 // start: call Screen.drawLine 4
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@9
D=D-A
@ARG
M=D
@Screen.drawLine
0;JMP
(Screen.vm::return::37) // end: call Screen.drawLine 4
@LCL // start: push local 0 // 151:22
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 151:22
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
(Screen::startWhile::24) // start: label Screen::startWhile::24 // end: label Screen::startWhile::24
@LCL // start: push local 0 // 148:18
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 148:18
@ARG // start: push argument 2 // 148:23
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 2 // 148:23
@SP // start: gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@Screen.vm::isTrue::38
D;JGT
D=0
@Screen.vm::isFalse::39
0;JMP
(Screen.vm::isTrue::38)
D=-1
(Screen.vm::isFalse::39)
@SP
A=M-1
M=D // end: gt
@SP // start: not
A=M-1
D=M
M=!D // end: not
@SP // start: if-goto Screen::whileBlock::25
AM=M-1
D=M
@Screen::whileBlock::25
D;JNE // end: if-goto Screen::whileBlock::25
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(String.new) // start: function String.new 0
@SP // end: function String.new 0
@3 // start: push constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 3
@String.vm::return::0 // start: call Memory.alloc 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Memory.alloc
0;JMP
(String.vm::return::0) // end: call Memory.alloc 1
@SP // start: pop pointer 0
AM=M-1
D=M
@3
M=D // end: pop pointer 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: pop this 0
AM=M-1
D=M
@THIS
A=M
M=D // end: pop this 0
@ARG // start: push argument 0 // 17:27
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 17:27
@THIS // start: pop this 1
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop this 1
@ARG // start: push argument 0 // 18:13
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 18:13
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@String.vm::isTrue::1
D;JGT
D=0
@String.vm::isFalse::2
0;JMP
(String.vm::isTrue::1)
D=-1
(String.vm::isFalse::2)
@SP
A=M-1
M=D // end: gt
@SP // start: if-goto String::thenBlock::0
AM=M-1
D=M
@String::thenBlock::0
D;JNE // end: if-goto String::thenBlock::0
@String::endIf::1 // start: goto String::endIf::1
0;JMP // end: goto String::endIf::1
(String::thenBlock::0) // start: label String::thenBlock::0 // end: label String::thenBlock::0
@ARG // start: push argument 0 // 19:34
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0 // 19:34
@String.vm::return::3 // start: call Array.new 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Array.new
0;JMP
(String.vm::return::3) // end: call Array.new 1
@THIS // start: pop this 2
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop this 2
(String::endIf::1) // start: label String::endIf::1 // end: label String::endIf::1
@3 // start: push pointer 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push pointer 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(String.dispose) // start: function String.dispose 0
@SP // end: function String.dispose 0
@ARG // start: push argument 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0
@SP // start: pop pointer 0
AM=M-1
D=M
@3
M=D // end: pop pointer 0
@THIS // start: push this 0 // 26:13
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push this 0 // 26:13
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@String.vm::isTrue::4
D;JGT
D=0
@String.vm::isFalse::5
0;JMP
(String.vm::isTrue::4)
D=-1
(String.vm::isFalse::5)
@SP
A=M-1
M=D // end: gt
@SP // start: if-goto String::thenBlock::2
AM=M-1
D=M
@String::thenBlock::2
D;JNE // end: if-goto String::thenBlock::2
@String::endIf::3 // start: goto String::endIf::3
0;JMP // end: goto String::endIf::3
(String::thenBlock::2) // start: label String::thenBlock::2 // end: label String::thenBlock::2
@THIS // start: push this 2
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push this 2
@String.vm::return::6 // start: call Array.dispose 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@6
D=D-A
@ARG
M=D
@Array.dispose
0;JMP
(String.vm::return::6) // end: call Array.dispose 1
(String::endIf::3) // start: label String::endIf::3 // end: label String::endIf::3
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(String.length) // start: function String.length 0
@SP // end: function String.length 0
@ARG // start: push argument 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0
@SP // start: pop pointer 0
AM=M-1
D=M
@3
M=D // end: pop pointer 0
@THIS // start: push this 0 // 34:16
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push this 0 // 34:16
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(String.charAt) // start: function String.charAt 0
@SP // end: function String.charAt 0
@ARG // start: push argument 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0
@SP // start: pop pointer 0
AM=M-1
D=M
@3
M=D // end: pop pointer 0
@ARG // start: push argument 1 // 39:16
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 39:16
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@String.vm::isTrue::7
D;JLT
D=0
@String.vm::isFalse::8
0;JMP
(String.vm::isTrue::7)
D=-1
(String.vm::isFalse::8)
@SP
A=M-1
M=D // end: lt
@SP // start: not
A=M-1
D=M
M=!D // end: not
@ARG // start: push argument 1 // 39:27
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 39:27
@THIS // start: push this 0 // 39:31
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push this 0 // 39:31
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@String.vm::isTrue::9
D;JLT
D=0
@String.vm::isFalse::10
0;JMP
(String.vm::isTrue::9)
D=-1
(String.vm::isFalse::10)
@SP
A=M-1
M=D // end: lt
@SP // start: and
M=M-1
A=M
D=M
A=A-1
D=D&M
M=D // end: and
@SP // start: if-goto String::thenBlock::4
AM=M-1
D=M
@String::thenBlock::4
D;JNE // end: if-goto String::thenBlock::4
@String::endIf::5 // start: goto String::endIf::5
0;JMP // end: goto String::endIf::5
(String::thenBlock::4) // start: label String::thenBlock::4 // end: label String::thenBlock::4
@THIS // start: push this 2
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push this 2
@ARG // start: push argument 1 // 40:25
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 40:25
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@THAT // start: push that 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push that 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(String::endIf::5) // start: label String::endIf::5 // end: label String::endIf::5
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(String.setCharAt) // start: function String.setCharAt 0
@SP // end: function String.setCharAt 0
@ARG // start: push argument 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0
@SP // start: pop pointer 0
AM=M-1
D=M
@3
M=D // end: pop pointer 0
@ARG // start: push argument 1 // 47:16
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 47:16
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@String.vm::isTrue::11
D;JLT
D=0
@String.vm::isFalse::12
0;JMP
(String.vm::isTrue::11)
D=-1
(String.vm::isFalse::12)
@SP
A=M-1
M=D // end: lt
@SP // start: not
A=M-1
D=M
M=!D // end: not
@ARG // start: push argument 1 // 47:27
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 47:27
@THIS // start: push this 0 // 47:31
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push this 0 // 47:31
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@String.vm::isTrue::13
D;JLT
D=0
@String.vm::isFalse::14
0;JMP
(String.vm::isTrue::13)
D=-1
(String.vm::isFalse::14)
@SP
A=M-1
M=D // end: lt
@SP // start: and
M=M-1
A=M
D=M
A=A-1
D=D&M
M=D // end: and
@SP // start: if-goto String::thenBlock::6
AM=M-1
D=M
@String::thenBlock::6
D;JNE // end: if-goto String::thenBlock::6
@String::endIf::7 // start: goto String::endIf::7
0;JMP // end: goto String::endIf::7
(String::thenBlock::6) // start: label String::thenBlock::6 // end: label String::thenBlock::6
@THIS // start: push this 2
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push this 2
@ARG // start: push argument 1 // 48:22
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 48:22
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@ARG // start: push argument 2 // 48:27
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 2 // 48:27
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
(String::endIf::7) // start: label String::endIf::7 // end: label String::endIf::7
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(String.appendChar) // start: function String.appendChar 0
@SP // end: function String.appendChar 0
@ARG // start: push argument 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0
@SP // start: pop pointer 0
AM=M-1
D=M
@3
M=D // end: pop pointer 0
@THIS // start: push this 0 // 55:13
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push this 0 // 55:13
@THIS // start: push this 1 // 55:29
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push this 1 // 55:29
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@String.vm::isTrue::15
D;JLT
D=0
@String.vm::isFalse::16
0;JMP
(String.vm::isTrue::15)
D=-1
(String.vm::isFalse::16)
@SP
A=M-1
M=D // end: lt
@SP // start: if-goto String::thenBlock::8
AM=M-1
D=M
@String::thenBlock::8
D;JNE // end: if-goto String::thenBlock::8
@String::endIf::9 // start: goto String::endIf::9
0;JMP // end: goto String::endIf::9
(String::thenBlock::8) // start: label String::thenBlock::8 // end: label String::thenBlock::8
@THIS // start: push this 2
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push this 2
@THIS // start: push this 0 // 56:22
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push this 0 // 56:22
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@ARG // start: push argument 1 // 56:39
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 56:39
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
@THIS // start: push this 0 // 57:33
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push this 0 // 57:33
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop this 0
AM=M-1
D=M
@THIS
A=M
M=D // end: pop this 0
(String::endIf::9) // start: label String::endIf::9 // end: label String::endIf::9
@3 // start: push pointer 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push pointer 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(String.eraseLastChar) // start: function String.eraseLastChar 0
@SP // end: function String.eraseLastChar 0
@ARG // start: push argument 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0
@SP // start: pop pointer 0
AM=M-1
D=M
@3
M=D // end: pop pointer 0
@THIS // start: push this 0 // 64:13
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push this 0 // 64:13
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@String.vm::isTrue::17
D;JGT
D=0
@String.vm::isFalse::18
0;JMP
(String.vm::isTrue::17)
D=-1
(String.vm::isFalse::18)
@SP
A=M-1
M=D // end: gt
@SP // start: if-goto String::thenBlock::10
AM=M-1
D=M
@String::thenBlock::10
D;JNE // end: if-goto String::thenBlock::10
@String::endIf::11 // start: goto String::endIf::11
0;JMP // end: goto String::endIf::11
(String::thenBlock::10) // start: label String::thenBlock::10 // end: label String::thenBlock::10
@THIS // start: push this 0 // 65:33
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push this 0 // 65:33
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: sub
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D // end: sub
@SP // start: pop this 0
AM=M-1
D=M
@THIS
A=M
M=D // end: pop this 0
@THIS // start: push this 2
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push this 2
@THIS // start: push this 0 // 66:22
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push this 0 // 66:22
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: pop temp 0
AM=M-1
D=M
@5
M=D // end: pop temp 0
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@5 // start: push temp 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push temp 0
@SP // start: pop that 0
AM=M-1
D=M
@THAT
A=M
M=D // end: pop that 0
(String::endIf::11) // start: label String::endIf::11 // end: label String::endIf::11
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(String.intValue) // start: function String.intValue 3
@SP
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1 // end: function String.intValue 3
@ARG // start: push argument 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0
@SP // start: pop pointer 0
AM=M-1
D=M
@3
M=D // end: pop pointer 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: pop local 1
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 1
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@THIS // start: push this 2
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push this 2
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@THAT // start: push that 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push that 0
@45 // start: push constant 45
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 45
@SP // start: eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@String.vm::isZero::19
D;JEQ
D=-1
(String.vm::isZero::19)
@SP
A=M-1
M=!D // end: eq
@SP // start: if-goto String::thenBlock::12
AM=M-1
D=M
@String::thenBlock::12
D;JNE // end: if-goto String::thenBlock::12
@String::endIf::13 // start: goto String::endIf::13
0;JMP // end: goto String::endIf::13
(String::thenBlock::12) // start: label String::thenBlock::12 // end: label String::thenBlock::12
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
(String::endIf::13) // start: label String::endIf::13 // end: label String::endIf::13
@String::startWhile::14 // start: goto String::startWhile::14
0;JMP // end: goto String::startWhile::14
(String::whileBlock::15) // start: label String::whileBlock::15 // end: label String::whileBlock::15
@THIS // start: push this 2
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push this 2
@LCL // start: push local 0 // 83:26
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 83:26
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@THAT // start: push that 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push that 0
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@SP // start: sub
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D // end: sub
@LCL // start: pop local 2
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 2
@LCL // start: push local 1 // 84:22
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 84:22
@10 // start: push constant 10
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 10
@LCL // start: push local 2 // 84:32
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 2 // 84:32
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: pop local 1
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 1
@LCL // start: push local 0 // 85:21
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 85:21
@1 // start: push constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 1
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
(String::startWhile::14) // start: label String::startWhile::14 // end: label String::startWhile::14
@LCL // start: push local 0 // 82:16
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 82:16
@THIS // start: push this 0 // 82:20
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push this 0 // 82:20
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@String.vm::isTrue::20
D;JLT
D=0
@String.vm::isFalse::21
0;JMP
(String.vm::isTrue::20)
D=-1
(String.vm::isFalse::21)
@SP
A=M-1
M=D // end: lt
@SP // start: if-goto String::whileBlock::15
AM=M-1
D=M
@String::whileBlock::15
D;JNE // end: if-goto String::whileBlock::15
@THIS // start: push this 2
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push this 2
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@SP // start: pop pointer 1
AM=M-1
D=M
@4
M=D // end: pop pointer 1
@THAT // start: push that 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push that 0
@45 // start: push constant 45
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 45
@SP // start: eq
M=M-1
A=M
D=M
A=A-1
D=M-D
@String.vm::isZero::22
D;JEQ
D=-1
(String.vm::isZero::22)
@SP
A=M-1
M=!D // end: eq
@SP // start: if-goto String::thenBlock::16
AM=M-1
D=M
@String::thenBlock::16
D;JNE // end: if-goto String::thenBlock::16
@String::endIf::17 // start: goto String::endIf::17
0;JMP // end: goto String::endIf::17
(String::thenBlock::16) // start: label String::thenBlock::16 // end: label String::thenBlock::16
@LCL // start: push local 1 // 89:22
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 89:22
@SP // start: neg
A=M-1
D=M
M=-D // end: neg
@LCL // start: pop local 1
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 1
(String::endIf::17) // start: label String::endIf::17 // end: label String::endIf::17
@LCL // start: push local 1 // 92:16
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 92:16
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(String.setInt) // start: function String.setInt 0
@SP // end: function String.setInt 0
@ARG // start: push argument 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0
@SP // start: pop pointer 0
AM=M-1
D=M
@3
M=D // end: pop pointer 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: pop this 0
AM=M-1
D=M
@THIS
A=M
M=D // end: pop this 0
@ARG // start: push argument 1 // 98:13
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 98:13
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@String.vm::isTrue::23
D;JLT
D=0
@String.vm::isFalse::24
0;JMP
(String.vm::isTrue::23)
D=-1
(String.vm::isFalse::24)
@SP
A=M-1
M=D // end: lt
@SP // start: if-goto String::thenBlock::18
AM=M-1
D=M
@String::thenBlock::18
D;JNE // end: if-goto String::thenBlock::18
@String::endIf::19 // start: goto String::endIf::19
0;JMP // end: goto String::endIf::19
(String::thenBlock::18) // start: label String::thenBlock::18 // end: label String::thenBlock::18
@3 // start: push pointer 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push pointer 0
@45 // start: push constant 45
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 45
@String.vm::return::25 // start: call String.appendChar 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(String.vm::return::25) // end: call String.appendChar 2
@ARG // start: push argument 1 // 100:24
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 100:24
@SP // start: neg
A=M-1
D=M
M=-D // end: neg
@ARG // start: pop argument 1
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop argument 1
(String::endIf::19) // start: label String::endIf::19 // end: label String::endIf::19
@3 // start: push pointer 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push pointer 0
@ARG // start: push argument 1 // 103:22
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 103:22
@String.vm::return::26 // start: call String.setIntRec 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@String.setIntRec
0;JMP
(String.vm::return::26) // end: call String.setIntRec 2
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(String.setIntRec) // start: function String.setIntRec 2
@SP
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1 // end: function String.setIntRec 2
@ARG // start: push argument 0
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 0
@SP // start: pop pointer 0
AM=M-1
D=M
@3
M=D // end: pop pointer 0
@ARG // start: push argument 1 // 110:25
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 110:25
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
@String::startWhile::20 // start: goto String::startWhile::20
0;JMP // end: goto String::startWhile::20
(String::whileBlock::21) // start: label String::whileBlock::21 // end: label String::whileBlock::21
@LCL // start: push local 0 // 112:29
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 112:29
@10 // start: push constant 10
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 10
@SP // start: sub
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D // end: sub
@SP // start: pop local 0
AM=M-1
D=M
@LCL
A=M
M=D // end: pop local 0
(String::startWhile::20) // start: label String::startWhile::20 // end: label String::startWhile::20
@LCL // start: push local 0 // 111:16
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 111:16
@9 // start: push constant 9
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 9
@SP // start: gt
M=M-1
A=M
D=M
A=A-1
D=M-D
@String.vm::isTrue::27
D;JGT
D=0
@String.vm::isFalse::28
0;JMP
(String.vm::isTrue::27)
D=-1
(String.vm::isFalse::28)
@SP
A=M-1
M=D // end: gt
@SP // start: if-goto String::whileBlock::21
AM=M-1
D=M
@String::whileBlock::21
D;JNE // end: if-goto String::whileBlock::21
@LCL // start: push local 0 // 114:17
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 0 // 114:17
@48 // start: push constant 48
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 48
@SP // start: add
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D // end: add
@LCL // start: pop local 1
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D // end: pop local 1
@ARG // start: push argument 1 // 115:13
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 115:13
@10 // start: push constant 10
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 10
@SP // start: lt
M=M-1
A=M
D=M
A=A-1
D=M-D
@String.vm::isTrue::29
D;JLT
D=0
@String.vm::isFalse::30
0;JMP
(String.vm::isTrue::29)
D=-1
(String.vm::isFalse::30)
@SP
A=M-1
M=D // end: lt
@SP // start: if-goto String::thenBlock::22
AM=M-1
D=M
@String::thenBlock::22
D;JNE // end: if-goto String::thenBlock::22
@3 // start: push pointer 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push pointer 0
@ARG // start: push argument 1 // 118:38
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push argument 1 // 118:38
@10 // start: push constant 10
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 10
@String.vm::return::31 // start: call Math.divide 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@Math.divide
0;JMP
(String.vm::return::31) // end: call Math.divide 2
@String.vm::return::32 // start: call String.setIntRec 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@String.setIntRec
0;JMP
(String.vm::return::32) // end: call String.setIntRec 2
@3 // start: push pointer 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push pointer 0
@LCL // start: push local 1 // 119:27
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 119:27
@String.vm::return::33 // start: call String.appendChar 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(String.vm::return::33) // end: call String.appendChar 2
@String::endIf::23 // start: goto String::endIf::23
0;JMP // end: goto String::endIf::23
(String::thenBlock::22) // start: label String::thenBlock::22 // end: label String::thenBlock::22
@3 // start: push pointer 0
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push pointer 0
@LCL // start: push local 1 // 116:27
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // end: push local 1 // 116:27
@String.vm::return::34 // start: call String.appendChar 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@7
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(String.vm::return::34) // end: call String.appendChar 2
(String::endIf::23) // start: label String::endIf::23 // end: label String::endIf::23
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(String.newLine) // start: function String.newLine 0
@SP // end: function String.newLine 0
@128 // start: push constant 128
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 128
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(String.backSpace) // start: function String.backSpace 0
@SP // end: function String.backSpace 0
@129 // start: push constant 129
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 129
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(String.doubleQuote) // start: function String.doubleQuote 0
@SP // end: function String.doubleQuote 0
@34 // start: push constant 34
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 34
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Sys.init) // start: function Sys.init 0
@SP // end: function Sys.init 0
@Sys.vm::return::0 // start: call Memory.init 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@5
D=D-A
@ARG
M=D
@Memory.init
0;JMP
(Sys.vm::return::0) // end: call Memory.init 0
@Sys.vm::return::1 // start: call Math.init 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@5
D=D-A
@ARG
M=D
@Math.init
0;JMP
(Sys.vm::return::1) // end: call Math.init 0
@Sys.vm::return::2 // start: call Screen.init 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@5
D=D-A
@ARG
M=D
@Screen.init
0;JMP
(Sys.vm::return::2) // end: call Screen.init 0
@Sys.vm::return::3 // start: call Output.init 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@5
D=D-A
@ARG
M=D
@Output.init
0;JMP
(Sys.vm::return::3) // end: call Output.init 0
@Sys.vm::return::4 // start: call Main.main 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@5
D=D-A
@ARG
M=D
@Main.main
0;JMP
(Sys.vm::return::4) // end: call Main.main 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Sys.halt) // start: function Sys.halt 0
@SP // end: function Sys.halt 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Sys.wait) // start: function Sys.wait 0
@SP // end: function Sys.wait 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return
(Sys.error) // start: function Sys.error 0
@SP // end: function Sys.error 0
@0 // start: push constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1 // end: push constant 0
@LCL // start: return
D=M
@5
A=D-A
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@LCL
D=M
@1
A=D-A
D=M
@THIS
M=D
@LCL
D=M
@2
A=D-A
D=M
@THAT
M=D
@LCL
D=M
@3
A=D-A
D=M
@ARG
M=D
@LCL
D=M
@4
A=D-A
D=M
@LCL
M=D
@R13
A=M
0;JMP // end: return