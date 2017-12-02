assume cs:code,ds:data
data segment
org 200h
_number db 0ffh,00h
code segment
start:
mov ax,data
mov ds,ax
mov cl,10h
mov dl,00h
lea si,_number
mov ax,[si]
clc
l2:sal ax,01h
   jnc l1
   inc dl
l1:dec cl
   jnz l2 
int 3
code ends
end start