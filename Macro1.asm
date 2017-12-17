<<<<<<< HEAD
include io.h

AREA MACRO
	mov AX, LEN
	mov BX, BRE
	mul BX
	mov AR, AX
endm

data segment 
	cr equ 0dh
	lf equ 0ah
	op1 db cr,lf,"Length  : ",0
	op2 db cr,lf,"Breadth : ",0
	op3 db cr,lf,"Area : ",0
	
	len dw 4 dup(0)
	bre dw 4 dup(0)
	ar dw 4 dup(0)
	value dw 4 dup(0)
	
data ends

code segment
	assume cs:code, ds:data
	start:
		mov ax, data
		mov ds, ax
		output op1
		inputs value,12
		atoi value
		mov len,ax
		mov ax, data
		mov ds, ax
		output op2
		inputs value,12
		atoi value
		mov bre,ax
		AREA
		itoa value,AX
		output value 
		mov ah,4ch
		int 21h
code ends
end start
=======
include io.h

AREA MACRO
	mov AX, LEN
	mov BX, BRE
	mul BX
	mov AR, AX
endm

data segment 
	cr equ 0dh
	lf equ 0ah
	op1 db cr,lf,"Length  : ",0
	op2 db cr,lf,"Breadth : ",0
	op3 db cr,lf,"Area : ",0
	
	len dw 4 dup(0)
	bre dw 4 dup(0)
	ar dw 4 dup(0)
	value dw 4 dup(0)
	
data ends

code segment
	assume cs:code, ds:data
	start:
		mov ax, data
		mov ds, ax
		output op1
		inputs value,12
		atoi value
		mov len,ax
		mov ax, data
		mov ds, ax
		output op2
		inputs value,12
		atoi value
		mov bre,ax
		AREA
		itoa value,AX
		output value 
		mov ah,4ch
		int 21h
code ends
end start
>>>>>>> 5a36338dd6099e12b2c722d23075717562de5ade
	