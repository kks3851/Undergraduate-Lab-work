			area largest,code,readonly
entry 
			mov r0,#00
			mov r3,#10
			ldr r1,=data_port
up 			ldr r2,[r1],#4
   			cmp r0,r2
   			bhs down
   			mov r0,r2
down 		subs r3,r3,#1
    		bne up
here 		b here
  
 
data_port	DCD 2,4,8,6,1,9,3,7,5,0
     		END