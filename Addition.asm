TITLE ADDITION
DATA SEGMENT   
    x1 db 3
    x2 db 4
    x1msg db "x1 is: ","$"     
    x2msg db 10,13,"x2 is: ","$"
    addresult db 0           
    RESULT db 10,13,"The addition result is:$"

DATA ENDS
Code SEGMENT
Start:  MOV AX,DATA
        MOV DS,AX          
        LEA DX,x1msg
        MOV AH,09
        INT 21H 
        MOV DL,x1
        ADD DL,30h
        MOV AH,02
        INT 21H           
        LEA DX,x2msg
        MOV AH,09
        INT 21H  
        MOV DL,x2
        ADD DL,30h
        MOV AH,02
        INT 21H
        MOV AL,x1
        MOV BL,x2
        ADD AL,BL
        MOV addresult,AL                
        LEA DX,RESULT
        MOV AH,09
        INT 21H        
        MOV DL,addresult
        ADD DL,30h
        MOV AH,02
        INT 21H  
        MOV AH,4CH
        INT 21H 
        
Code ENDS
END Start