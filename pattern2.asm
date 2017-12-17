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
		mov cx, ax
		mov bx, 0
		outer:
			output op3
			mov bx, 0
			inner:
				itoa value,ax
				output value
				inc bx
				cmp bx,cx
				jne inner
				
		loop outer 
		mov ah,4ch
		int 21h
code ends
end start
