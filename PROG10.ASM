; Program 10 : Division Two Numbers From Keyboard of Single Digit 
dosseg
.model small
.stack 100h
.data
.code
main proc
        mov ah,1
        int 21h
        sub al,48
        mov dl,al
        mov ah,1
        int 21h
        sub al,48
        mov bl,al
        mov al,dl
        mov ah,0
        div dl
        mov ch,ah
        mov cl,al
        add cl,48
        mov dl,cl
        mov ah,2
        int 21h
        add ch,48
        mov dl,ch
        mov ah,2
        int 21h
        mov ah,4ch
        int 21h
main endp
end main
