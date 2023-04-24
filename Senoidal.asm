org 100h
jmp start
    Y dw 100,125,148,168,184,195,200,198,190,177,159,137,113,87,63,41,23,10,2,0,5,16,32,52,75,100
    COLOR EQU 0fh 
start: 
    mov ah, 0
    mov al, 13h
    int 10h 
     mov cx,0
seguir:
        mov bx,0
Repetir:  
        mov dx,Y(bx) 
        inc bx
        inc cx  
        mov al, color
        mov ah, 0ch 
        
        int 10h 
        cmp y(bx),75
        jne Repetir 
        jmp seguir
     mov ah, 0
     int 16h 
ret