        mov r0,#0ah
        mov dptr,#2500h
        mov r1,#0ffh
l1:     movx a,@dptr
        mov r2,a
        subb a,r1
        jnc down
        mov a,r2
        mov r1,a
down:   inc dptr
        djnz r0,l1
        mov a,r1
        movx @dptr,a
here:   sjmp here

        