assume cs:code,ds:data        
data segment
_terms dw 0ah
_result db 10 dup(?)
data ends
code segment
start:
mov ax,data
mov ds,ax
mov cx,_terms
lea si,_result  
mov al,00h
mov bl,01h
mov [si],al
inc si
mov [si],bl
inc si
l1:mov al,[si-2]
   mov bl,[si-1]
   add al,bl
   mov [si],al
   inc si
   loop l1
int 3   
code ends
end start