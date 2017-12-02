		area small,code,readonly
entry
		mov r0,#0xff
		mov r3,#10
		ldr r1,=series
up		ldr r2,[r1],#4
		cmp r2,r0
		bcs down
		mov r0,r2
down	subs r3,r3,#1
		bne up
he		b he

series	dcd 2,5,6,1,3,4,7,8,9,10
		end
