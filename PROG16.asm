; Program 16: Print Star Pattern
dosseg
.model small
.stack 100h
.data
    NL  DB  0DH, 0AH, '$'         ; NL = NEXT LINE
.code
main proc
    MOV AX, @DATA
    MOV DS, AX
    MOV CX, 5
    MOV BX, 1
    FOR_1:
        PUSH    CX
        MOV DL, 20H    ; 20H IS ASCII CODE FOR SPACE
        MOV AH, 2
        FOR_2:
            INT 21H    ; PRINTING SPACES
        LOOP    FOR_2
        MOV CX, BX
        MOV DL, '*'
        MOV AH, 2
        FOR_3:
            INT     21H    ; PRINTING STARS
        LOOP    FOR_3
        LEA DX, NL
        MOV AH, 9
        INT     21H    ; MOVE CURSOR TO THE START OF NEXT LINE
        INC BX
        POP CX
    LOOP    FOR_1
    MOV AH, 4CH
    INT         21H
main endp
end main