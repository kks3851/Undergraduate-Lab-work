assume cs:code,ds:data
data segment
org 400h
series db 01h,02h,03h,04h,05h,06h,07h,08h,09h,0ah,00h,00h,00h
data ends

code segment
start:
mov ax,data
mov ds,ax
mov ax,0000h
mov cl,09
mov dl,10
lea bx,series
mov al,[bx]
up:
inc bx
add al,[bx]
dec cl
jnz up

mov [bx],al

inc bx
div dl
mov [bx],ax



int 3
code ends
end start
