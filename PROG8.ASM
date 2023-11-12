; Program 8 : Addition of Two Numbers Read From Keyboard of Two Digits
dosseg
.model small
.stack 100h
.data
.code
main proc
        mov ah,1
        int 21h
        mov dl,al
        mov ah,1
        int 21h
        mov ah,0
        add al,dl
        aaa
        mov ch,ah
        mov cl,al
        mov cl,al
        add ch,48
        mov dl,ch
        mov ah,2
        int 21h
        add cl,48
        mov dl,cl
        mov ah,2
        int 21h
        mov ah,4ch
        int 21h
main endp
end main
