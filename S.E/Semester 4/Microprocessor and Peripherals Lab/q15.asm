assume cs:code,ds:data

data segment
org 400h
_length db 05
org 401h
series db 0ffh,01h,0eh,07h,09h
data ends

code segment
start:

mov ax,data
mov ds,ax
mov dx,0000h
mov dl,_length
dec dx

l1:lea si,series
   mov cx,dx                    
l2:mov al,[si]
   cmp al,[si+1]
   jnc l3
   xchg [si+1],al
   mov [si],al
l3:inc si
   loop l2
   dec dx
   jnz l1
int 3
code ends
end start
