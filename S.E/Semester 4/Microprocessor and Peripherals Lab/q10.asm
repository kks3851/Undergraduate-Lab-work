assume cs:code,ds:data
data segment  
org 400h    
_bcdno db 37h
_binaryno db (?)
data ends
code segment
start:
mov ax,data
mov ds,ax
mov al,_bcdno
and al,0f0h
mov cl,04h
rcr al,cl
mov bl,0ah
mul bl
mov bl,al
mov al,_bcdno
and al,0fh
add al,bl
mov _binaryno,al
int 3
code ends
end start