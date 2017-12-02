assume cs:code,ds:data

data segment
org 200h
_block db 01h,05h,09h,07h,03h,02h,04h,08h,0ah,06h,00h 
data ends

code segment
start:

mov ax,data
mov ds,ax

mov ax,0000h
mov dx,0000h
mov cl,0ah
lea bx,_block

up:
cmp al,[bx]
jnc dn
mov al,[bx]
dn:
inc bx
dec cl
jnz up
 



mov [bx],al



int 3
code ends
end start
