.model small
.stack 100h
.data
.code
 main proc 
   mov dl,"?"
   mov ah,2
   int 21h
   
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    
    mov cl,al
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h 
    
    cmp bl,cl
    jg greater:
    mov dl,bl
    int 21h 
    mov dl,cl
    int 21h 
    jmp en
    greater:
    mov dl,cl 
    int 21h 
    mov dl,bl
    int 21h  
    en:
    mov ah,4ch
    int 21h
    main endp  
 end main