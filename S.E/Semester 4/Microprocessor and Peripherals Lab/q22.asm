assume cs:code
code segment
start:
mov ax,1234h
mov bx,1234h
not ax
not bx
add ax,01h
adc bx,00h
int 3
code ends
end start