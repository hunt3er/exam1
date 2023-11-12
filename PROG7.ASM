; Program 7 : Addition of Two Numbers of Two Digit Numbers 
dosseg
.model small
.stack 100h
.data
.code
main proc
        mov al,5
        add al,7
        aaa
        mov ch,ah
        mov cl,al
        add ch,48
        mov dl,ch
        mov ah,2
        int 21h
        add cl,48
        mov dl,cl
        mov ah,2
        int 21h
        mov ch,4ch
        int 21h
main endp
end main

