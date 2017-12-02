assume cs:code,ds:data
data segment
x dw 02h
n dw 02h
z dw 1 dup(?)
data ends
code segment
start:
mov ax,data
mov ds,ax 
mov ax,1h
mov bx,x
mov cx,n
l1:mul bx
   dec cx
   jnz l1
mov z,ax   
int 3
code ends
end start