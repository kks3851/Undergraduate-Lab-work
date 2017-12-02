assume cs:code,ds:data,es:extra
data segment
    org 200h
    _count db 00h
data ends

extra segment
    org 300h
    _word db 'microprocessor'
extra ends

code segment
start:
mov ax,data
mov ds,ax
mov ax,extra
mov es,ax
lea si,_count
lea di,_word
mov cl,0eh
mov dl,00h
mov al,'r'
l1:scasb
   jnz l2
   inc dl
l2:loop l1   
mov [si],dl
int 3
code ends
end start
