; Program 3 : Subtraction of Two Numbers
dosseg
.model small
.stack 100h
.data
.code
main proc
      mov dl,15
      mov bl,10
      sub dl,bl
      add dl,48
      mov ah,2
      int 21h
      mov ah,4ch
      int 21h
main endp
end main
