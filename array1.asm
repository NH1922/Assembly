<<<<<<< HEAD
include io.h

data segment
	cr equ 0dh
	lf equ 0ah
	op1 db cr,lf,"Size :",0
	op2 db cr,lf,"Elements :",0
	op3 db cr,lf,"Displaying :",0
	n dw 4 dup(0)
	value dw 40 dup(?)
	array dw 40 dup(?)
	max dw 40 dup(?)
	min dw 40 dup(?)
	
data ends

code segment
	assume cs:code, ds:data
	start:
		mov ax, data
		mov ds, ax
		output op1
		inputs value, 40
		atoi value 
		mov n, ax
		output op2
		lea si, array
		mov dx,n
		elin:
			inputs value,40
			atoi value
			mov [si],ax
			add si,2
			dec dx 
		jnz elin
		
		lea si,array
		mov cx,n
		
		display:
			mov ax,[si]
			itoa value,ax
			output value
			add si,2
		loop display	
		
		lea si,array
		
		mov ax,[si]
		itoa value,ax
		output value
		add si,2
		mov dx,n
		
		maximum:
			cmp [si],ax
			jg replace
			jl cont
			replace:
				mov ax,[si]
				jmp cont
			cont:
				add si,2
				dec dx
		jnz maximum
		;mov ax,max
		itoa value,ax
		output value
				
		

		mov ah,4ch
		int 21h
code ends
end start
=======
include io.h

data segment
	cr equ 0dh
	lf equ 0ah
	op1 db cr,lf,"Size :",0
	op2 db cr,lf,"Elements :",0
	op3 db cr,lf,"Displaying :",0
	n dw 4 dup(0)
	value dw 40 dup(?)
	array dw 40 dup(?)
	max dw 40 dup(?)
	min dw 40 dup(?)
	
data ends

code segment
	assume cs:code, ds:data
	start:
		mov ax, data
		mov ds, ax
		output op1
		inputs value, 40
		atoi value 
		mov n, ax
		output op2
		lea si, array
		mov dx,n
		elin:
			inputs value,40
			atoi value
			mov [si],ax
			add si,2
			dec dx 
		jnz elin
		
		lea si,array
		mov cx,n
		
		display:
			mov ax,[si]
			itoa value,ax
			output value
			add si,2
		loop display	
		
		lea si,array
		
		mov ax,[si]
		itoa value,ax
		output value
		add si,2
		mov dx,n
		
		maximum:
			cmp [si],ax
			jg replace
			jl cont
			replace:
				mov ax,[si]
				jmp cont
			cont:
				add si,2
				dec dx
		jnz maximum
		;mov ax,max
		itoa value,ax
		output value
				
		

		mov ah,4ch
		int 21h
code ends
end start
>>>>>>> 5a36338dd6099e12b2c722d23075717562de5ade
