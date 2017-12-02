assume cs:code,ds:data  
data segment
org 400h
_block1 db 10 dup(40h)
org 500h
_block2 db 10 dup(50h)
data ends
code segment
start:
mov ax,data
mov ds,ax
lea si,_block1
lea bx,_block2
mov cl,0ah     
l1:mov ax,[si]
   mov dx,[bx]
   mov [si],dx
   mov [bx],ax
   inc si
   inc bx
loop l1
int 3
code ends
end start