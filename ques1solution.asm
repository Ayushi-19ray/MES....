ORG 0000H
MOV A, #10
MOV B, #10
MUL AB          
MOV R0, A        
MOV A, #11
MOV B, R0
MUL AB           
MOV R1, A         
MOV A, #40
ADD A, #5          
ADD A, R1          



