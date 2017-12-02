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

mov ax,0000h
mov dx,0000h
mov cl,14

lea di,_word


up:
mov al,'r'
scasb
jnz dn
inc dx
dec di
mov al,00h
stosb

dn:dec cl
jnz up


lea si,_count
mov [si],dl

int 3
code ends
end start




