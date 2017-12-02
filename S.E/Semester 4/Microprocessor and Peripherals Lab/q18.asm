assume cs:code,ds:data
data segment
org 0300h
_block db 05h,02h,52h,85h,42h,63h,0eh,87h,90h,03h
data ends
code segment
start:
mov ax,4000h
mov ds,ax
mov cl,0ah
mov ax,00h
lea si,_block
l2:cmp ax,ds:[si]
   jnc l1
   mov al,ds:[si]
l1:inc bx
   dec cx
   jnz l2
   mov ds:[si],ax
int 3
code ends
end start