; Program 13 : Print to Display Alphabets
dosseg
.model small
.stack 100h
.data
.code
main proc
        mov cx,26
        mov dl,64
        Print:
                add dl,1
                mov ah,2
                int 21h
                loop Print
        mov ah,4ch
        int 21h
main endp
end main
