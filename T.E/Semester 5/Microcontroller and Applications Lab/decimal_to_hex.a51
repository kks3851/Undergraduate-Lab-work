        mov a,#0ah
        mov r1,a
        mov b,#0ah
        anl a,#0f0h
        mul ab
        mov r2,a
        mov r3,b
        mov a,r1
        anl a,#0fh
        add a,r2
        jnc down
        inc r3
down:   inc dptr
        movx @dptr,a
        inc dptr
        mov a,r3
        movx @dptr,a
here:   sjmp here