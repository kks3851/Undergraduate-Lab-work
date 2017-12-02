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
lea bx,series
up:
mov ax,0000h
mov al,[bx]
div dl
add ah,00h
jnz dn
inc dh
dn:
inc bx
dec cl
jnz up

mov [bx],dh

int 3
code ends
end start
