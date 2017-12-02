		area mycode,code,readonly
entry
		mov r1,#01
		mov r2,#01
		mul r3,r1,r2
		mov r1,#02
		mov r2,#02
		mul r4,r1,r2
		add r5,r3,r4
stop	b stop

	end