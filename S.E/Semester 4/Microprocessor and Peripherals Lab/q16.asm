assume cs:code,ds:data,es:extra
data segment
org 5000h
_block1 db dup(50h)
data ends
extra segment
org 6000h
_block2 db dup(?)
extra ends
code segment
start:
mov ax,1000h
mov ds,ax
mov es,ax
lea si,_block1
lea di,_block2
mov cx,000ah
cld
l1:mov sb                            
   dec cx
   jnz l1
int3   
code ends
end start