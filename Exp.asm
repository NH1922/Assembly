<<<<<<< HEAD
include io.h

data segment 
	cr equ 0dh
	lf equ 0ah
	
	prompt1 db cr,lf,"A :",0
	prompt2 db cr,lf,"B :",0
	prompt3 db cr,lf,"X :",0
	prompt4 db cr,lf,"Y :",0
	prompt5 db cr,lf,"OUTPUT :",0
	
	a dw 4 dup(0)
	b dw 4 dup(0)
	x dw 4 dup(0)
	y dw 4 dup(0)
	OP dw 4 dup(0)
	temp dw 4 dup(0)
	d1 dw 4 dup(0)
	d2 dw 4 dup(0)
	d3 dw 4 dup(0)
	d4 dw 4 dup(0)
	value dw 4 dup(0)

data ends

code segment

	assume cs:code, ds:data
	start:
	mov AX,data
	mov DS,AX
	
	output prompt1
	inputs value,12
	atoi value
	mov a,AX
	output prompt2
	inputs value,12
	atoi value
	mov b,AX
	output prompt3
	inputs value,12
	atoi value
	mov x,AX
	output prompt4
	inputs value,12
	atoi value
	mov y, AX
	
	mov ax,x
	add ax, y
	mov d1, ax
	
	mov ax, a
	sub ax, b
	mov d2, ax
	
	mov ax, x
	sub ax, y
	mov d3, ax
	
	mov ax, a
	add ax, b
	mov d4, ax
	
	mov ax, d3
	mul d4 
	mov temp, ax
	
	mov ax, d1
	mul d2
	
	div temp
	
	
	mov OP, ax
	itoa OP, ax
	output OP 
	mov ah,4ch
	int 21h
code ends 
end start
=======
include io.h

data segment 
	cr equ 0dh
	lf equ 0ah
	
	prompt1 db cr,lf,"A :",0
	prompt2 db cr,lf,"B :",0
	prompt3 db cr,lf,"X :",0
	prompt4 db cr,lf,"Y :",0
	prompt5 db cr,lf,"OUTPUT :",0
	
	a dw 4 dup(0)
	b dw 4 dup(0)
	x dw 4 dup(0)
	y dw 4 dup(0)
	OP dw 4 dup(0)
	temp dw 4 dup(0)
	d1 dw 4 dup(0)
	d2 dw 4 dup(0)
	d3 dw 4 dup(0)
	d4 dw 4 dup(0)
	value dw 4 dup(0)

data ends

code segment

	assume cs:code, ds:data
	start:
	mov AX,data
	mov DS,AX
	
	output prompt1
	inputs value,12
	atoi value
	mov a,AX
	output prompt2
	inputs value,12
	atoi value
	mov b,AX
	output prompt3
	inputs value,12
	atoi value
	mov x,AX
	output prompt4
	inputs value,12
	atoi value
	mov y, AX
	
	mov ax,x
	add ax, y
	mov d1, ax
	
	mov ax, a
	sub ax, b
	mov d2, ax
	
	mov ax, x
	sub ax, y
	mov d3, ax
	
	mov ax, a
	add ax, b
	mov d4, ax
	
	mov ax, d3
	mul d4 
	mov temp, ax
	
	mov ax, d1
	mul d2
	
	div temp
	
	
	mov OP, ax
	itoa OP, ax
	output OP 
	mov ah,4ch
	int 21h
code ends 
end start
>>>>>>> 5a36338dd6099e12b2c722d23075717562de5ade
	