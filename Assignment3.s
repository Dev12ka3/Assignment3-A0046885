.global _start
_start:
    MOV R0, #15     @ Store the first number in R0 (You can change this value for grading)
    MOV R1, #10     @ Store the second number in R1 (You can change this value for grading)
    MOV R5, #15     @ Store decimal 15 in register R5 (For later comparison)

    CMP R0, R1      @ Compare R0 and R1
    BEQ equal       @ If R0 is equal to R1, branch to equal section
    BLT lesser      @ If R0 is less than R1, branch to lesser section

greater:
    LSL R5, R5, #2  @ Logical left shift R5 by 2 (two left shifts)
    B end           @ Branch to end to terminate the program

lesser:
    LSR R5, R5, #1  @ Logical right shift R5 by 1 (one right shift)
    B end           @ Branch to end to terminate the program

equal:
    ROR R5, R5, #1  @ Right rotate R5 by 1 (one right rotation)
    B end           @ Branch to end to terminate the program

end:
    MOV R3, #11     @ End of program
