include io.h

data segment
	cr equ 0dh
	lf equ 0ah
	op1 db cr,lf,"String 1 :",0
	op2 db cr,lf,"String 2 :",0
	str1 dw 40 dup(0)
	str2 dw 40 dup(0)
data ends

code segment
	assume cs:code, ds:data
	
	start:
	mov ax,data
	mov ds,ax
		output op1
		inputs str1,40
		lea si,str1
		lea di, str2
		std
		rep movsw 
		
		comparing:
			lea si,str1
			lea di,str2
			std
			repnz cmpsw
			jz equal
			output op1
			jmp exit
			equal:
				output op2
			exit:
			
		
			mov ah,4ch
			int 21h
code ends
end start 