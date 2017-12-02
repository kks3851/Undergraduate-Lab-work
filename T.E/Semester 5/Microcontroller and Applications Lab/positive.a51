        mov dptr,#2500h
        mov r0,#0ah
        mov r1,#00h
l1:     movx a,@dptr
        rlc a
        jc l2
        inc r1
l2:   inc dptr
        djnz r0,l1
here:   sjmp here