include io.h

data segment 
	cr equ 0dh
	lf equ 0ah
	op1 db cr,lf,"Size ?",0
	op2 db "*",0
	op3 db cr,lf,0
	n dw 4 dup(0)
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
		mov n,ax
		mov cx,n
		mov ax,0
		mov bx,1
		itoa value,ax
		output value
		itoa value,bx
		output value
		mov dx,0
		while:
			add ax,bx
			itoa value,ax
			output value
			mov dx,ax
			mov ax,bx
			mov bx,dx
		loop while
		mov ah,4ch
		int 21h
code ends 
end start 
		