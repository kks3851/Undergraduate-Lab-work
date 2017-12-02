        mov dptr,#2500h
        mov r0,#00h
        mov r1,#0ah
        mov b,r1
back:   movx a,@dptr
        add a,r0
        mov r0,a
        inc dptr
        djnz r1,back
        mov a,r0
        inc dptr
        movx @dptr,a
        div ab
        inc dptr
        movx @dptr,a
here:   sjmp here