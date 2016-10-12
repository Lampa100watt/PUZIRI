dosseg

 .model small
 .stack
 .data
   string db 'Armenia', 10
   stringln equ $-string
   handle dw ?
   filename db 'MYFILE.001',0
 
 .code

begin:
mov bx, @data
mov ds,bx
mov AH,3Ch
mov CX,0
mov DX, offset filename
int 21h
mov handle, AX

mov AH, 40
mov BX, handle
mov CX, stringln
mov DX, offset string
int 21h

mov AH, 3Eh
mov BX, handle
int 21h

mov AX, 4C00h
int 21h
        
end begin    