        mov dptr,#2500h
        movx a,@dptr
        mov r0,a
        inc dptr
        movx a,@dptr
        mov r1,a
        inc dptr
        movx a,@dptr
        mov r2,a
        inc dptr
        movx a,@dptr
        mov r3,a
        
        mov a,r0
        mov b,r2
        mul ab
        mov r4,b
        inc dptr
        movx @dptr,a
        mov a,r1
        mov b,r2
        mul ab
        mov r5,b
        add a,r4
        mov r4,a
        mov a,r0
        mov b,r3
        mul ab
        mov r6,b
        add a,r4
        inc dptr
        movx @dptr,a
        mov a,r5
        add a,r6
        mov r5,a
        mov a,r1
        mov b,r3
        mul ab
        mov r6,b
        add a,r5
        inc dptr
        movx @dptr,a
        mov a,r6
        addc a,#00h
        inc dptr
        movx @dptr,a        
here:   sjmp here