        mov dptr,#2500h
        movx a,@dptr
        mov r0,a
        anl a,#0f0h
        clr c
        subb a,#09h
        jnc down
        add a,#25h
        mov r1,a
        sjmp up 
down:   add a,#1eh
        mov r1,a
up:     mov a,r0
        anl a,#0fh
        clr c
        subb a,#09h
        jnc down1
        add a,#35h
        mov r2,a
        sjmp here
down1:  add a,#1eh
        mov r2,a
        mov a,r1
        inc dptr
        movx @dptr,a
        mov r2,a
        inc dptr
        movx @dptr,a
here:   sjmp here