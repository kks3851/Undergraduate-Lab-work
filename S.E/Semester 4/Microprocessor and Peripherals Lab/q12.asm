assume cs:code,ds:data
data segment
org 400h
pl dw 20h
ph dw 23h
ql dw 57h
qr dw 32h
r1 dw (?)
r2 dw (?)
r3 dw (?)
data ends
code segment
start:
mov ax,data
mov ds,ax
mov al,pl
mov bl,ql
add al,bl
daa
mov r1,al
mov al,ph
mov bl,qh
adc al,bl
daa
mov r2,al    
mov dl,00h
adc dl,00h
mov r3,dl  
int 3 
code ends
end start