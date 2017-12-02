assume cs:code,ds:data
data segment
org 0500h
pl dw 55h
ph dw 55h
ql dw 33h
qr dw 33h
r1 dw (?)
r2 dw (?)
data ends
code segment
start:
mov ax,data
mov ds,ax
mov al,pl
mov bl,ql
sub al,bl
das
mov r1,al
mov al,ph
mov bl,qh
sbb al,bl
das
mov r2,al      
int 3 
code ends
end start