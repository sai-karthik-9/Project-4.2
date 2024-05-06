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
// Define constants
@SCREEN
D=A
@SP
M=D

// Infinite loop
(LOOP)
// Listen to keyboard input
@KBD
D=M
// If a key is pressed, blacken the screen
@SP
D;JNE
@BLACK
0;JMP
// If no key is pressed, clear the screen
@WHITE
0;JMP

// Subroutines to blacken and clear the screen
(BLACK)
@SCREEN
M=-1
@LOOP
0;JMP

(WHITE)
@SCREEN
M=0
@LOOP
0;JMP