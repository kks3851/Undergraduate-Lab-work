assume cs:code,es:extra
extra segment
    org 300h
    _word db 'microprocessor'
extra ends

code segment
start:
mov ax,extra
mov es,ax
cld
lea di,_word
mov cl,0eh
mov dl,00h
mov al,'o'
l1:scasb
   jnz l2
   inc dl
l2:loop l1   
mov es:[di],dl
int 3
code ends
end start
