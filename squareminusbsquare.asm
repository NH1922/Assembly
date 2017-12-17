data segment 
	a dd 4.0
	b dd 3.0
	result dd ? 
data ends 

code segment
	assume cs:code,ds:data
	start:
		mov ax,data
		mov ds,ax
		finit 
		fld a
		fld a
		fmul
		fld b
		fld b
		fmul 
		fsub
		fst result
code ends 
end start 
