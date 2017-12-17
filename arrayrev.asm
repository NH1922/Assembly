<<<<<<< HEAD
include io.h

data segment 
	cr equ 0dh
	lf equ 0ah
	op1 db cr,lf,"Size :",0
	op2 db cr,lf,"Enter :",0
	n dw 4 dup(0)
	value dw 40 dup(0)
	array dw 40 dup(0)
data ends

code segment
	assume cs:code, ds:data
	start:
		mov ax, data
		mov ds, ax
		output op1
		inputs value,12
		atoi value
		mov n,ax
		mov dx,n
		lea si,array
		output op2
		input:
			inputs value,40
			atoi value
			mov [si],ax
			add si,2
			dec dx
		jnz input
		
		lea si,array
		mov cx,n
		display:
			mov ax,[si]
			itoa value,ax
			output value
			add si,2
		loop display
		lea si,array
		mov cx,n
		traverse:
			add si,2
		loop traverse
		mov cx,n
		sub si,2
		reverse:
			mov ax,[si]
			itoa value,ax
			output value
			sub si,2
		loop reverse
		mov ah,4ch
		int 21h
code ends
=======
include io.h

data segment 
	cr equ 0dh
	lf equ 0ah
	op1 db cr,lf,"Size :",0
	op2 db cr,lf,"Enter :",0
	n dw 4 dup(0)
	value dw 40 dup(0)
	array dw 40 dup(0)
data ends

code segment
	assume cs:code, ds:data
	start:
		mov ax, data
		mov ds, ax
		output op1
		inputs value,12
		atoi value
		mov n,ax
		mov dx,n
		lea si,array
		output op2
		input:
			inputs value,40
			atoi value
			mov [si],ax
			add si,2
			dec dx
		jnz input
		
		lea si,array
		mov cx,n
		display:
			mov ax,[si]
			itoa value,ax
			output value
			add si,2
		loop display
		lea si,array
		mov cx,n
		traverse:
			add si,2
		loop traverse
		mov cx,n
		sub si,2
		reverse:
			mov ax,[si]
			itoa value,ax
			output value
			sub si,2
		loop reverse
		mov ah,4ch
		int 21h
code ends
>>>>>>> 5a36338dd6099e12b2c722d23075717562de5ade
end start 