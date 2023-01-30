// for (i=0; i<n; i++){
//     sum += arr[i] 
// }

// RAM[0] = sum
// RAM[1] = pointer to beginning of array
// RAM[2] = n
// RAM[3] = i

// Make sum=0
@0
M=0

// Make i=0
@3
M=0

// If i == n, end the program
@3
D=M
@2
D=D-M
@21
D;JEQ

// Add the current value to sum
@1
D=M
@3
A=D+M
D=M
@0
M=M+D

// Increment i
@3
M=M+1

// Restart the loop
@4
0;JMP

// Infinite loop to end the program.
@21
0;JMP


