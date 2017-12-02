		 AREA mycode,CODE,READONLY
  ENTRY
	  	ldr r1,=num
	 	ldr r4,[r1]
	 	and r4,#0x0f
	 	mov r5,r4
		cmp r5,#9
		bhi down
		add r5,r5,#0x30
		b jump1
down	add r5,r5,#0x37 	
jump1	ldr r4,[r1]
	 	and r4,#0xf0
	 	mov r6,r4 ,lsr #4
		cmp	r6,#9
		bhi up
		add r6,r6,#0x30
		b stop
up   	add r6,r6,#0x37

stop	b stop
ALIGN
num dcb 0x99
 END
