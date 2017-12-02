     area mycode,code
 entry 
	 ldr r1,=source
	 ldr r2,=distance
	 mov r3,#10
up ldr r4,[r1],#04
    str r4,[r2],#04
	subs r3,r3,#01
	bne up
here b here

    	area mydata,data,readwrite
source   space 40
distance space 40
 end