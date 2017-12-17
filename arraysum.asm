<<<<<<< HEAD
include io.h

data segment
	cr equ 0dh
	lf equ 0ah
	op1 db cr,lf,"Size :",0
	op2 db cr,lf,"Elements:",0
	op3 db cr,lf,"Sum :",0
	
	n dw 4 dup(0)
	value dw 40 dup(0)
	array dw 40 dup(0)
	sum dw 40 dup (0)
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
		output op2
		lea si,array
		mov dx,n
		read:
			inputs value,40
			atoi value
			mov [si],ax
			add si,2
			dec dx 
		jnz read
		output op3
		;to compute the sum 
		
		lea si,array
		mov dx,n
		mov ax,0
		mov sum,ax
		mov ax,0
		sumcalc:
			add ax,[si]
			add si,2
			dec dx
		jnz sumcalc
		itoa value,ax
		output op3
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
	op2 db cr,lf,"Elements:",0
	op3 db cr,lf,"Sum :",0
	
	n dw 4 dup(0)
	value dw 40 dup(0)
	array dw 40 dup(0)
	sum dw 40 dup (0)
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
		output op2
		lea si,array
		mov dx,n
		read:
			inputs value,40
			atoi value
			mov [si],ax
			add si,2
			dec dx 
		jnz read
		output op3
		;to compute the sum 
		
		lea si,array
		mov dx,n
		mov ax,0
		mov sum,ax
		mov ax,0
		sumcalc:
			add ax,[si]
			add si,2
			dec dx
		jnz sumcalc
		itoa value,ax
		output op3
		output value
		mov ah,4ch
		int 21h
code ends
end start
			
			
		
>>>>>>> 5a36338dd6099e12b2c722d23075717562de5ade
		