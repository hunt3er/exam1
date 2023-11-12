; Program 11 : Print Letter A 10 Times
dosseg
.model small
.stack 100h
.data
.code
main proc
        mov cx,10
        PrintA:
                mov dl,65
                mov ah,2
                int 21h
                loop PrintA
                mov ah,4ch
                int 21h
main endp
end main
