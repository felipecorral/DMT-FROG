

PUBLIC dibujaFotograma

f3 SEGMENT 'CODE'

ASSUME CS: f3

dibujaFotograma PROC FAR
 
  PUSH BP
  MOV BP,SP

  PUSH DS 
  PUSH DI
  PUSH DX 
  PUSH BX 
  PUSH SI
  PUSH ES  
  PUSH CX 
  PUSH DX 
  PUSH AX

  MOV DS, SS:[BP+14]             ; DS= Dirección memoria del fotograma.
  MOV SI, SS:[BP+12]             ; SI= segmento memoria del fotograma.
  MOV ES, SS:[BP+6]              ; ES= Segmento dirección pantalla.
  MOV AX, SS:[BP+10]             ; AX= coordenada Y.
  MOV BX, SS:[BP+8]              ; BX= coordenada x.
  MOV CX, 6
  SHL AX, CL
  ADD BX, AX
  SHL AX, 1
  SHL AX, 1
  ADD BX, AX
  MOV DI, BX
  XOR CX, CX
  XOR BX, BX
  XOR SI, SI
  MOV BX, WORD PTR DS:[SI]       ; BX= Filas.
  ADD SI, 2
  MOV CX, WORD PTR DS:[SI]       ; CX= Columnas.
  MOV SI, SS:[BP+12]
  XOR DX, DX
  MOV DX, BX  
  ADD SI, 4


columnas:

     MOV AL, DS:[SI]
     CMP AL,0
     JZ nopintar                  ; Para no pintar el fondo de un sprite.
     MOV ES:[DI], AL
     nopintar:
     DEC BX
     INC SI
     CMP BX, 0
     JZ saltoLinea
     INC DI
     JMP columnas

saltoLinea:

     MOV AX, 320
     SUB AX, DX
     INC AX
     ADD DI, AX
     MOV BX, DX
     XOR AX, AX
     LOOP columnas


  POP AX
  POP DX
  POP CX
  POP ES
  POP SI
  POP BX
  POP DX
  POP DI
  POP DS
  POP BP

  RETF 10 

dibujaFotograma ENDP

f3 ENDS

END