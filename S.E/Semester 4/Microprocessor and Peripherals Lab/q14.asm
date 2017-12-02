assume cs:code,ds:data
data segment
str_source db 'ABCDEF'
str_destination db 1 dup(?) 
data ends
code segment
start:
mov ax,data
mov ds,ax
lea dx,str_source
mov cl,str_source+1
sub cl,01h
lea si,str_source+2
lea di,str_source+2
repz movsb
mov cl,str_source+1
lea di,str_destination+2  
l1:mov dx,[si]
   mov [di],dx
   dec si
   inc di
   dec cl
   cmp cl,00h
   jne l1
int 3   
code ends
end start