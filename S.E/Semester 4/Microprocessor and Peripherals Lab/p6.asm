assume cs:code,ds:data
data segment
org 400h
_block1 db 10 dup(0ffh)
org 500h
_block2 db 10 dup(0aah)
data ends

code segment
start:

mov ax,data
mov ds,ax

mov ax,0000h
lea bx,_block1
lea si,_block2

mov cl,0ah

up:
mov  al,[bx]
xchg al,[si]
mov [bx],al
inc bx
inc si
loop up


int 3

code ends
end start
