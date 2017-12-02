assume cs:code,ds:data
data segment
org 300h
series db 01h,02h,03h,04h,05h,06h,07h,08h,09h,0ah
data ends
code segment
start:
mov ax,data
mov ds,ax
mov dx,0004h
mov cl,0ah
lea si,series
l2:mov ax,0000h
   mov al,[si]
   div dl
   add ah,00h
   jnz l1
   inc dh
l1:inc si
   dec cl
   jnz l2
mov [si],dh
int 3
code ends
end start
