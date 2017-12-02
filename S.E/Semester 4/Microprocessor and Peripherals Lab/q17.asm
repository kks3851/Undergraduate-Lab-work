assume cs:code,ds:data
data segment
org 0200h
_block db 05h,02h,52h,85h,42h,63h,0eh,87h,90h,03h
data ends
code segment
start:
mov ax,4000h
mov ds,ax
mov cl,0ah
mov al,ffh
lea si,_block
l2:cmp al,ds:[si]
   jnc l1
   mov al,ds:[si]
l1:inc bx
   dec cx
   jnz l2
   mov ds:[si],al
int 3
code ends
end start