;Program 15 : Print Multiplication Table
dosseg
.model small
.stack 100h
.data
	num db ?
	msg db 'Enter a digit:$'
	string db 5 dup(?)
.code
main proc
    mov ax, @data
	mov ds, ax
	
	lea dx, msg		;; display enter a digit:
	mov ah, 9
	int 21h
	mov ah, 1		;; gets a digit as character
	int 21h
	sub al, 48     	;; convert character into number
	mov num, al
	
	xor bx, bx
	mov bl, 1
	mov cx, 10
	top:
		mov al, num		;; multiplication step
		mul bl
		push bx         ;; reserving bx and cx for later use by pushin stack
		push cx
		lea si, string
	
	mov bx, 10          ;; storing 2 digits number as character in string
	xor cx, cx
	division: 
		xor dx,dx
		div bx
		push dx
		inc cx
		cmp ax, 0
		jne division
	store: 
		pop dx
		add dl, 48
		mov [si], dl
		inc si
		loop store
		mov [si], '$ '
	
	pop cx
	pop bx
	mov dl, 13             ;;; new line
	mov ah, 2
	int 21h
	mov dl, 10
	mov ah, 2
	int 21h
	
	lea dx, string       ;;get that 2 digit number which is character from string
	mov ah, 9
	int 21h

	inc bl
	loop top                 ;; multiplication table stops

	mov ah, 4ch             ;; end of program
	int 21
	
main endp
end main
