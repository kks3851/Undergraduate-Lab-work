assume cs:code
code segment
start:
mov ax,0000h
mov bx,0200h
mov cl,10h
mov dx,0000h
clc

mov ax,[bx]

up:
   sal ax,01
   jnc dn
   inc dx
dn:dec cl
   jnz up

mov bx,0202h
mov [bx],dx


int 3
code ends
end start
