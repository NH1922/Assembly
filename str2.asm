include io.h
data segment
	cr equ 0dh
	lf equ 0ah
	op1 db cr,lf,"String 1 :",0
	str1 dw 40 dup(0)
	str2 dw 40 dup(0)
data ends

code segment
	assume cs:code, ds:data
	start:
		mov ax, data
		mov ds, ax
		mov es, ax
		output op1
		inputs str1,40
		lea si,str1
		lea di,str2
		rep movsb 
		output str2
		output str1
		mov ah,4ch
		int 21h
code ends
end start
