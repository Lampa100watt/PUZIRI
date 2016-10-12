dosseg
 .model small
 .stack
 .data
   Datastring DB 'etot text naxoditsya v segmente dannih'
 .code
 begin:
  mov bx,@data
  mov ds,bx
  mov dx,offset.DataString 
  mov AH,4ch
  int 21h
 end begin