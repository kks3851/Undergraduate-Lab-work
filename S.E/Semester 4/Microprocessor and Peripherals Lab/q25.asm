assume cs:code,ds:data
data segment
_num dw 05h
_result dw (?)
data ends
code segment 
start:
mov ax,data
mov ds,ax
mov ax,01h
mov bx,_num
l2:cmp bx,01h
   jz l1
   mul bx
   dec bx
   jmp l2
l1:mov _result,ax
int 3
code ends
end start