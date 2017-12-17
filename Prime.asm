include io.h

data segment 
	cr equ 0dh
	lf equ 0ah
	op1 db cr,lf,"Number ?",0
	op2 db cr,lf,"Prime",0
	op3 db cr,lf,"Not Prime",0

	n dw 4 dup(0)
	value dw 4 dup(0)
	flag dw 4 dup(0)
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
		mov cx,2
		mov bx,n
		sub bx,1
		cmp ax,2
		je prime
		while:
			mov ax,n
			cmp cx,bx
			je prime
			cwd
			div cx
			cmp dx,0
			jz notprime
			inc cx
		jnz while
		prime:
		output op2
		jmp quit
		notprime:
			output op3
			jmp quit
		
		quit:
			mov ah,4ch
			int 21h
code ends 
end start 

			
		