assume cs:code,ds:data

data segment
org 300h
    length db 0ah
org 301h
    series db 05h,08h,01h,0ffh,02h,0ah,0feh,09h,07h,20h
    
data ends

code segment
    start:
    mov ax,data
    mov ds,ax
    mov es,ax
    
    mov cl,length
    dec cl
    mov ch,cl
    mov ax,0000h
    lea bx,series
    
    up1:
    mov si,00h
    mov di,01h
    
    up:
    mov al,[bx+si]
    cmp al,[bx+di]
    jc dn
    xchg al,[bx+di]
    mov [bx+si],al
    dn:
    inc si
    inc di
    dec cl
    jnz up
    
    
    dec ch
    mov cl,ch
    jnz up1
    
    int 3
    code ends
end start
