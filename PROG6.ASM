; Program 6 : Multiplication of Two Number of Two Digits 5 x 2 = 10 
dosseg
.model small
.stack 100h
.data
.code
main proc
        mov al,5
        mov bl,2
        mul bl
        aam
        mov ch,ah
        mov cl,al
        add ch,48
        mov dl,ch
        mov ah,2
        int 21h
        mov dl,cl
        add dl,48
        mov ah,2
        int 21h
        mov ah,4ch
        int 21h
main endp
end main

