assume cs:code,ds:data
data segment
org 400h
series db 01h,01h,01h,01h,01h,01h,01h,01h,01h,01h
data ends
code segment
start:
mov ax,data
mov ds,ax
mov ax,0000h
mov cx,0ah
lea si,series
l2:mov bx,[si]
   add ax,bx
   inc si
   loop l2
mov [si],al
inc si
mov [si],ah
inc si   
mov dl,0ah
mul dl
mov [si],al
inc si
mov [si],ah    
int 3
code ends
end start