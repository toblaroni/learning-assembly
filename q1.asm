
// make ram[2] a pointer to ram[5]
@5
D=A
@2
M=D

// AND and then negate ram[1] and ram[5] (using the pointer)
@2
A=M
D=M
@1
D=D&M
D=!D
@8
M=D // Store at ram[8]

// OR ram[1] and ram[5] (using pointer)
@2
A=M
D=M
@1
D=D|M
@9 // store at ram[9]
M=D

// AND the results at ram[8] and ram[9]
@8
D=M
@9
D=D&M
@0
M=D // Store at ram[0]

// Finish in an infinite loop
@25
0;JMP


