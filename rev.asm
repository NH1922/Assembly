<<<<<<< HEAD
include io.h

data segment
	cr equ 0ah
	lf equ 0dh
	
	op1 db cr,lf,"Number : ",0
	op2 db cr,lf,"Reversed :",0
	
	value dw 4 dup(0)
	max dw 4 dup(0)
	n dw 4 dup(0)
	
data ends 

code segment
	assume cs:code, ds:data
	start:
		mov ax, data
		mov ds, ax
	
		revr proc near
		output op1
		inputs value,12
		atoi value 
		mov cx,0
		mov n,ax
		mov max,10
		rev_loop:
			cmp ax,0
			jz finish
			cwd
			idiv max
			mov bx,dx
			xchg ax,cx
			imul max
			add ax,bx
			xchg ax,cx
		jmp rev_loop
		
		finish:	
		output op2
		itoa value,cx
		output value
		revr endp
		
		call revr 
		
		exit:
		mov ah,4ch
		int 21h
code ends 
end start 
			
			
			
		
=======
include io.h

data segment
	cr equ 0ah
	lf equ 0dh
	
	op1 db cr,lf,"Number : ",0
	op2 db cr,lf,"Reversed :",0
	
	value dw 4 dup(0)
	max dw 4 dup(0)
	n dw 4 dup(0)
	
data ends 

code segment
	assume cs:code, ds:data
	start:
		mov ax, data
		mov ds, ax
	
		revr proc near
		output op1
		inputs value,12
		atoi value 
		mov cx,0
		mov n,ax
		mov max,10
		rev_loop:
			cmp ax,0
			jz finish
			cwd
			idiv max
			mov bx,dx
			xchg ax,cx
			imul max
			add ax,bx
			xchg ax,cx
		jmp rev_loop
		
		finish:	
		output op2
		itoa value,cx
		output value
		revr endp
		
		call revr 
		
		exit:
		mov ah,4ch
		int 21h
code ends 
end start 
			
			
			
		
>>>>>>> 5a36338dd6099e12b2c722d23075717562de5ade
			