// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(loop)//arr = screen
@screen
D = M
@arr
M = D

(forloop)//i = 0
@i
M = 0
D = M
@8192
D = D - M
@loop//if(i >= 8192)jmp to loop
D;JGE

@keyboard//if(kbd == 0)
D = M
@kbdz
D;JEQ


@arr//else arr[i] = -1
D = M
@i
A = D + M
M = -1


(back)
@i//else i++
M = M + 1
@forloop//back to loop
0;JMP

(kbdz)
@arr
D = M
@i
A = D + M
M = 0
@back
0;JMP
