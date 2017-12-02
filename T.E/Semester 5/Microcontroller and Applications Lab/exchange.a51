        mov r0,#20h
        mov r1,#30h
        mov r7,#0ah
loop:   mov a,@r0
        mov r2,a
        mov a,@r1
        mov @r0,a
        mov a,r2
        mov @r1,a
        inc r0
        inc r1
        djnz r7,loop
here:   sjmp here
        