PUBLIC modografico

modogr SEGMENT 'CODE'

ASSUME CS: modogr 


modografico PROC far

	PUSH BP
	MOV BP,SP
		
	PUSH AX
	;Para cambiar a  modo 320X200 cargamos en AH 0, y en AL 13h q esta en la pila
	MOV AH,0h
	MOV AL,SS:[BP+6]
	INT 10h
	
	POP AX
	POP BP
	RETF 2
modografico ENDP

modogr ENDS

END