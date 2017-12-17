include io.h

data segment
	cr equ 0dh
	lf equ 0ah
	op1 db cr,lf,"String 1 :",0
	op2 db cr,lf,"String 2 :",0
	op3 db cr,lf,"Equal",0
	op4 db cr,lf,"Not equal",0
	str1 dw 40 dup(0)
	str2 dw 40 dup(0)
data ends





code segment
	assume cs:code, ds:data
	start:
		mov ax, data
		mov ds,ax
		mov es,ax
		output op1
		inputs str1,40
		output op2
		inputs str2,40
		lea si,str1
		lea di, str2
		cld
		repe cmpsw
		jz equal
		output op4
		jmp exit
		equal:
			output op3
		exit:
		mov ah,4ch
		int 21h
code ends
end start
