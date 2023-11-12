; Program 9 : Division of Two Numbers of Single Digits
dosseg
.model small
.stack 100h
.data
.code
main proc
        mov al,25
        mov bl,5
        div bl
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

