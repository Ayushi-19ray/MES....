ORG 0000H
MOV R0, #40H      
MOV R1, #40H      
LOOP:
    MOV A, R0
    CJNE A, #60H, READ
    SJMP FILL
READ:
    MOV A, @R0
    CJNE A, #0FFH, COPY
    INC R0
    SJMP LOOP
COPY:
    MOV @R1, A
    INC R1
    INC R0
    SJMP LOOP
FILL:
    MOV A, R1
    CJNE A, #60H, ZERO
    SJMP END
ZERO:
    MOV @R1, #00H
    INC R1
    SJMP FILL
END:

