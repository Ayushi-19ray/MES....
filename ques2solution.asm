ORG 0000H
MOV A, 50H     
MOV R0, 51H     

COMPARE_LOOP:
    JZ CHECK_A_ZERO    

    MOV B, R0            
    JZ CHECK_B_ZERO      

    DEC A                
    DEC R0               
    SJMP COMPARE_LOOP
CHECK_A_ZERO:
    MOV A, R0
    JZ EQUAL_CASE       
    MOV A, #0FFH          
    MOV 52H, A
    SJMP END_PROG

CHECK_B_ZERO:
    MOV A, #01H           
    MOV 52H, A
    SJMP END_PROG


EQUAL_CASE:
    MOV A, #00H          
    MOV 52H, A

END_PROG:

