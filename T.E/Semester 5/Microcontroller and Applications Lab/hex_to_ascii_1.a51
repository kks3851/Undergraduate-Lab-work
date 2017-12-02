mov r0,#30h
mov r1,#30h
mov r2,#30h
cjne a,#00h,c1_hextobcd 
ret  
  

c1_hextobcd:
mov r3,#2h
mov a,r3
clr c
mov b,#100  
div ab
orl a,r0
mov r0,a
clr c
mov a,b
mov b,#10
div ab 
orl a,r1
mov r1,a
mov a,b
orl a,r2
mov r2,a 
ret
 
