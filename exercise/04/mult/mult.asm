// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@a
M = 0


(loop)

@a//if(a <= 0) jmp to exit
D = M
@EXIT
D;JLE
@a
M = M - 1
@R1
D = M
@R2
M = D + M
@loop
0;JMP


(EXIT)
@EXIT
0;JMP
