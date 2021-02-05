.model small                    ; type of the code


org 100h                        ; sode starts from offset 100h
.data
    alpha   DB  2
    beta    DB  3
    zeta    DB  4     
    
     
.code                           ; code segment
    MOV al, alpha
    MOV bl, beta 
    MUL bl   
    ADD al, 48
    
    MOV dl, al
    MOV ah, 2h
    INT 21h
    
    MOV al, alpha
    MOV cl, zeta 
    MUL cl   
    ADD al, 48
    
    MOV dl, al
    MOV ah, 2h
    INT 21h
                            

END                             ; End Program


; MUL multiples the argument with al and stores it in al
      