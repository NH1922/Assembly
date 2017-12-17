include io.h

data segment 
	cr equ 0dh
	lf equ 0ah
	
	prompt1 db cr, lf,"A :",0
	prompt2 db cr, lf,"B :",0
	prompt3 db cr, lf,"A is greater",0
	prompt4 db cr, lf,"B is greater",0
	prompt5 db cr, lf,"EQUAL !",0
	prompt6 db cr, lf,"A is even !",0
	prompt7 db cr, lf,"A is odd",0
	
	a dw 4 dup(0)
	b dw 4 dup(0)
	value dw 4 dup(0)
data ends

code segment
	assume cs:code, ds:data
	start:
		mov AX, data
		mov ds, AX
		output prompt1
		inputs value, 12
		atoi value
		mov a, AX
		output prompt2
		inputs value, 12
		atoi value
		mov b, AX
		eoro:
			mov AX,a
			mov BX,02h
			div BX
			cmp dx,0
			jz even1
			output prompt7
			jmp compare
			even1:
			output prompt6
			jmp compare
		
		
		
		
		compare:
		mov ax, a
		cmp ax,b
		jg case1
		jge case2
		output prompt4
		jmp exit
		case1:
			output prompt3
			jmp exit
		case2:
			output prompt5
			jmp exit
		exit:
			mov ah, 4ch
			int 21h
code ends 
end start
		
		