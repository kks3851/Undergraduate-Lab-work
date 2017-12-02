        MOV R2,#0AH
        MOV DPTR,#2500H
        MOVX A,@DPTR
        MOV R3,A
        SUBB A,R2
        JNC DOWN
        MOV A,R3
        ADD A,#30H
        SJMP UP
DOWN:   MOV A,R3
        ADD A,#37H
UP:     INC DPTR
        MOVX @DPTR,A
HERE:   SJMP HERE
