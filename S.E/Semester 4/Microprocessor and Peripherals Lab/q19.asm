assume cs:code,ds:data
data segment
p dw 1234h
q dw 1234h
r dw 6789h
p1 dw (?)
p2 dw (?)
p3 dw (?)
data ends
code segment
start:
mov ax,data
mov ds,ax
mov ax,q
mov bx,r
mul bx
mov p1,ax
mov si,dx
mov ax,p
mul bx
add si,ax
mov p2,si
adc dx,00h
mov p3,dx
int 3
code ends
end start