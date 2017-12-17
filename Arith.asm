;Arithmetic Expressions - AIO 
include io.h


data Segment 
cr equ 0dh 
lf equ 0ah 

prompt1 db cr, lf, "Enter value of A :",0 
prompt2 db cr, lf, "Enter value of B :",0 
prompt3 db cr, lf, "Sum  = ",0
prompt4 db cr, lf, "Difference is = ",0
prompt5 db cr, lf, "Product is = ",0
prompt6 db cr, lf, "Quotient is =", 0
prompt7 db cr, lf, "Remainder is =", 0
x dw 2 dup(0)
y dw 2 dup(0)
value dw 2 dup(0)
sum dw 2 dup(0)
difference dw 2 dup(0)
product dw 4 dup(0)
quotient dw 4 dup(0)
remainder dw 4 dup(0)
data ends



code Segment 
assume cs:code,ds:data

start :
	MOV AX, data 
	MOV ds, AX   

	output prompt1  
	inputs value, 12 
	atoi value 
	MOV x, AX
	output prompt2
	inputs value, 12
	atoi value
	MOV y, AX
	ADD AX, x
	MOV SUM, AX 
	output prompt3	
	itoa sum, ax 
	output sum
	MOV AX, y
	SUB AX, x
	MOV difference, AX
	output prompt4
	itoa difference, AX
	output difference
	MOV AX, x
	MUL y
	MOV product, AX
	output prompt5
	ITOA product, AX
	output product
	MOV AX, x
	DIV y
	MOV quotient, AX
	output prompt6
	ITOA quotient, AX
	output quotient
	MOV remainder, DX
	output prompt7
	ITOA remainder, DX
	output remainder
	mov ah, 4ch
	int 21h
code ends 
end start

