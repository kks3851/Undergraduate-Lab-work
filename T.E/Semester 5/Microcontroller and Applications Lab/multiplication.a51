        mov dptr,#2500h
        movx a, @dptr
        mov b,a
        inc dptr
        movx a,@dptr
        mul ab
        mov dptr,#2520h
        movx @dptr,a
        inc dptr
        mov a,b
        movx @dptr,a
here:   sjmp here
        