assume cs:code,ds:data
data segment
org 200h
p dw 1234h
q dw 1234h
r dw 1234h
s dw 1234h
p1 dw (?)
p2 dw (?)
p3 dw (?)
data ends
code segment
start:
mov ax,data
mov ds,ax
mov ax,p
mov bx,s
add ax,bx
mov p1,ax
mov ax,p
mov bx,r
adc ax,bx
mov p2,ax
mov dx,00h
adc dx,00h
mov p3,dx
int 3
code ends
end start