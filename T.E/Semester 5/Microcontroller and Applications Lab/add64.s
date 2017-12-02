		area add,code,readonly
entry
		mov r0,#0x0000001
		mov r1,#0x0000001
		mov r2,#0x0000002
		mov r3,#0x0000002
		adds r2,r2,r0
		adc r3,r3,r1
stop	b stop
		
	end