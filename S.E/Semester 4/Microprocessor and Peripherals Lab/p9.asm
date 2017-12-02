assume cs:code,ds:data

data segment
org 300h
_block db 01h,05h,09h,07h,03h,02h,04h,08h,0ah,06h,00h 
data ends

code segment
start:

mov ax,data
mov ds,ax

mov ax,0000h
mov dx,0000h
mov cl,09h
lea bx,_block

mov al,[bx]
inc bx

up:
cmp al,[bx]
jc dn
mov al,[bx]
dn:
inc bx
dec cl
jnz up
 



mov [bx],al



int 3
code ends
end start
