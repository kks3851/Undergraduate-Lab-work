        mov dptr,#2500h
        movx a, @dptr
        inc dptr 
        mov b,a
        mov r2,b
        mul ab
        mov r0,b
        add a,r2
        jnc down
        inc r0
down:   add a,#1h
        jnc down1
        inc r0
down1:  movx @dptr,a
        inc dptr
        mov a,r0
        movx @dptr,a
here:   sjmp here
        