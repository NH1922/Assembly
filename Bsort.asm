include io.h

data segment
	cr equ 0dh
	lf equ 0ah
	op1 db cr,lf,"Size :",0
	op2 db cr,lf,"Elements :",0
	op3 db cr,lf,"Sorted",0
	op4 db cr,lf,"Now swapping",0
	n dw 4 dup(0)
	value dw 40 dup(?)
	array dw 40 dup(?)
	temp dw 40 dup (?)
	i dw 40 dup (?)
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
		read:
			inputs value,40
			atoi value
			mov [si],ax
			add si,2
			dec dx
		jnz read
		
		mov ax,0
		mov i,ax
		oloop:
			lea si,array
			mov dx,n
			
			iloop:
				mov ax,[si]
				add si,2
				mov bx,[si]
				cmp ax,bx
				jle noswap
			swap:
				mov temp,ax
				mov ax,bx
				mov bx,temp
				mov [si],bx
				sub si,2
				mov [si],ax
				add si,2
			noswap:
				dec dx
				cmp dx,i
				jnz iloop
				
		
		inc i
		mov cx,i
		cmp cx,n
		jne oloop
		
	display:
			mov ax,[si]
			itoa value,ax
			output value
			add si,2
		loop display	
		
	mov ah,4ch
	int 21h
code ends 
end start 

		