assume cs:code,ds:data
data segment
org 200h
_block db 05h,02h,52h,85h,42h,63h,0eh,87h,90h,03h
data ends
code segment
start:
mov ax,data
mov ds,ax
mov cl,0ah
mov ax,00h
lea bx,_block
l2:cmp ax,[bx]
   jnc l1
   mov al,[bx]
l1:inc bx
   dec cx
   jnz l2
   mov [bx],ax
int 3
code ends
end start