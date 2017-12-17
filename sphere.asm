data segment
	r dd 3.00
	d dd 1.33
	volume dd ? 
	
data ends 

code segment
	assume cs:code,ds:data
	start:
		mov ax,data
		mov ds,ax
		finit 
		fld r
		fld r
		fld r
		fmul 
		fmul 
		fldpi 
		fld d
		fmul
		fmul
		fst volume
code ends 
end start 