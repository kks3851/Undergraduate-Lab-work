assume cs:code,ds:data,es:extra  
data segment
_block1 db 15 dup(40h)
data ends
extra segment
_block2 db 15 dup(50h)
extra ends
code segment
start:
mov ax,3000h
mov ds,ax   
mov ax,4000h
mov es,ax
lea si,_block1
lea di,_block2
mov cl,0fh
l1:mov ax,ds:[si]
   mov dx,es:[di]
   mov ds:[si],dx
   mov es:[di],ax
   inc si
   inc di
loop l1
int 3
code ends
end start