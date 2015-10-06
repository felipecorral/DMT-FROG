PUBLIC refrescar

refresca SEGMENT 'CODE'

ASSUME CS: refresca

refrescar PROC FAR	; Refresca la pantalla virtual.

  PUSH BP
  MOV BP, SP

  PUSH ES
  PUSH DI
  PUSH DS
  PUSH SI
  PUSH CX
  PUSH AX

  XOR SI,SI
  MOV ES, SS:[BP+8]        ; ES= Segmento  pantalla virtual.
  MOV DI, SS:[BP+6]        ; DI=  Desplazamiento  pantalla virtual.
  MOV CX, 64000            ; CX= 64000 (tamaño  pantalla virtual, 64k).
  MOV AX, 0A000h           ; AX= Dirección pantalla real.
  MOV DS, AX

bucle:
     
    MOV BL, ES:[DI]        ; Volcamos la pantalla virtual en BL.
    MOV DS:[SI], BL        ; Movemos BL en la dirección de la pantalla real.
    INC SI
    INC DI
         
    LOOP bucle


  POP AX
  POP CX
  POP SI
  POP DS
  POP DI
  POP ES
  POP BP

  RETF 4


refrescar ENDP
refresca ENDS
END
