        mov dptr,#2500h
        mov r0,#00h
        mov r1,#00h
        mov r2,#0ah
loop:   mov a,r0
        add a,r1
        inc r0
        inc r0
        mov r1,a
        djnz r2,loop
        movx @dptr,a
here:   sjmp here