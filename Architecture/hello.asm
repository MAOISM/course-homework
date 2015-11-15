data segment  
    output db 'Hello world! $'  
data ends  
code segment    
    
    assume ds:data,cs:code  
start: 
    mov ax,data  
    mov ds,ax  
      
    mov dx,offset output  
    mov ah,09h  
    int 21h  
      
    mov ah,04h  
    int 21h  
  
code ends  
    end start  
