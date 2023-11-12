; Program 14 : Calculate Product Without Using MUL
dosseg
.model small
.stack 100h
.data
.code
main proc
    mov cx,4
    mov dl,0
    PrintAdd:
        add dl,2
        loop PrintAdd
    add dl,48
    mov ah,2
    int 21h
    mov ah,4ch
    int 21h
main endp
end main
