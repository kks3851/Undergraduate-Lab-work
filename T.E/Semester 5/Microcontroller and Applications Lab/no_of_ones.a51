        mov r0,#00h
        mov r2,#08h
        mov dptr,#2500h
        movx a,@dptr
l1:     rlc a
        jnc l2
        inc r0
        clr c
l2:     djnz r2,l1
here:   sjmp here