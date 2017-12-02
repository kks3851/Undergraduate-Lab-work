		area count,code
entry
		adr r0,array
		mov r2,#0
		mov r6,#0x0a
		mov r3,#0
		mov r4,#0
		mov r5,#0
		mov r7,#0
loop	ldr r1,[r0,r7]
		cmp r1,r2
		addgt r3,r3,#1
		addlt r4,r4,#1
		addeq r5,r5,#1
		add r7,r7,#4
		subs r6,r6,#1
		bne loop
here	b here

		align
array	dcd 1,2,0,1,0,2,0,-1,0,-7
		end