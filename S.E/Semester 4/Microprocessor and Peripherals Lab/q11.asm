assume cs:code,ds:data
data segment
org 400h
hex db 00ffh
num_hund db ?
num_ten db ?
rem db ?
bcdl db ?
bcdh db ?
data ends
code segment
start:
mov ax,data
mov ds,ax
mov al,hex
mov ah,00H
mov bl,64H
mov bh,0AH
cmp al,bl
jz l1
div bl
mov num_hund,al
mov bcdl,ah
mov al,ah
mov ah,00H
l1:cmp al,0AH
   jc l2
   div bh
   mov num_ten,al
   mov al,ah
l2:mov rem,al
   mov cl,num_ten
   rol cl,04H
   add cl,al
   adc cl,00H
   mov bcdh,cl
int 3
code ends
end start