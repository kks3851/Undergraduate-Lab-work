		area mycode,code,readonly
entry
		mov r1,#09
		mov r2,#02
		mov r3,r1,lsl#4
		add r4,r3,r2
stop	b stop
	end