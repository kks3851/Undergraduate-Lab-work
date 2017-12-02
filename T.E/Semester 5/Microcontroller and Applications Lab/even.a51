        mov r0,#00h
        mov dptr,#2500h
        mov r1,#0ah
up:     movx a,@dptr
        rrc a
        jc down
        inc r0
down:   inc dptr
        djnz r1,up
here:   sjmp here