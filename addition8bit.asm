.model small                    ; type of the code


org 100h                        ; sode starts from offset 100h
.data
    alpha   DB  3
    beta    DB  4    
     
.code                           ; code segment
    MOV al, alpha
    MOV bl, beta
    ADD bl, al
    ADD bl, 48
    
    MOV dl, bl
    MOV ah, 2
    INT 21h    
                            

END                             ; End Program