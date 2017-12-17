data segment
	arr dd 1.0,2.0,3.0,4.0
	size dd 4.0
	sum dd ? 
	avg dd ? 
data ends

code segment 
	assume cs:code,ds:data
	start:
		mov ax,data
		mov ds,ax
		finit
		fldz
		lea si,arr
		mov cx,4
		while:
			fld dword ptr[si]
			add si,4
			fadd
		loop while
		fst sum
		fld size 
		fdiv
		fst avg
		mov ah,4ch
		int 21h
code ends
end start
