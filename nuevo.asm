EXTRN modografico:FAR
EXTRN dibujaFotograma:FAR
EXTRN refrescar:FAR

; Declaración de CONSTANTES: 
;
izq EQU 1Eh    ; Letra A
dch EQU 20h    ; Letra D
arr EQU 11h    ; Letra  W
abj EQU 1Fh    ; Letra S
escape EQU 01h ; Tecla escape.
;
;-------------------------------------------------------------------
;
;
; Declaración del Segmento de Datos OBLIGATORIO

datos SEGMENT
pantallaVirtual SEGMENT

   pantalla1 db 0fa00h dup(?)

pantallaVirtual ENDS

visitado 	dw 30 ;ancho
			dw 30 ;alto
db 204, 131, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 204, 204
db 125, 3, 3, 3, 3, 3, 3, 3, 124, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 124, 3, 3, 3, 3, 3, 124, 126
db 126, 3, 125, 125, 125, 125, 125, 126, 47, 145, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 126, 145, 118, 125, 125, 125, 125, 125, 126, 198
db 126, 3, 125, 125, 125, 125, 125, 145, 47, 47, 145, 125, 125, 125, 125, 125, 125, 125, 125, 125, 145, 47, 47, 145, 125, 125, 125, 125, 126, 198
db 126, 3, 125, 125, 125, 145, 143, 47, 47, 47, 145, 125, 125, 125, 125, 125, 125, 125, 125, 126, 47, 10, 10, 10, 143, 125, 125, 125, 126, 198
db 126, 3, 125, 125, 125, 145, 47, 47, 47, 47, 145, 125, 125, 125, 125, 125, 125, 125, 125, 145, 47, 10, 71, 10, 47, 145, 125, 125, 126, 198
db 126, 3, 125, 125, 145, 118, 47, 47, 47, 10, 10, 143, 126, 125, 125, 125, 125, 125, 125, 47, 46, 71, 29, 10, 47, 47, 145, 125, 126, 198
db 126, 3, 125, 125, 145, 47, 118, 118, 47, 71, 70, 72, 122, 125, 125, 125, 125, 125, 145, 47, 10, 29, 29, 10, 47, 47, 145, 125, 126, 198
db 126, 3, 125, 143, 47, 47, 118, 118, 47, 10, 71, 10, 47, 126, 125, 125, 125, 125, 47, 47, 10, 71, 71, 47, 47, 47, 47, 145, 126, 198
db 126, 3, 125, 47, 47, 47, 47, 118, 47, 10, 10, 10, 47, 126, 125, 125, 125, 125, 47, 47, 10, 10, 10, 47, 118, 47, 47, 143, 126, 198
db 126, 124, 145, 47, 47, 47, 47, 118, 2, 47, 47, 47, 47, 145, 125, 125, 125, 145, 47, 47, 2, 2, 118, 47, 47, 47, 47, 47, 145, 198
db 126, 3, 10, 10, 10, 10, 10, 47, 2, 2, 2, 47, 47, 47, 145, 126, 145, 47, 2, 2, 2, 2, 47, 47, 47, 47, 47, 47, 2, 198
db 126, 3, 10, 10, 71, 71, 10, 46, 47, 2, 2, 2, 118, 118, 122, 126, 145, 2, 120, 120, 2, 47, 47, 47, 47, 47, 47, 47, 143, 198
db 126, 3, 10, 29, 15, 29, 71, 71, 71, 71, 143, 2, 118, 118, 2, 120, 120, 120, 47, 47, 47, 47, 47, 47, 47, 118, 118, 10, 25, 198
db 126, 124, 145, 10, 10, 10, 10, 10, 10, 10, 47, 2, 2, 2, 2, 2, 2, 2, 47, 47, 47, 47, 47, 47, 47, 47, 10, 10, 25, 198
db 126, 124, 10, 10, 10, 47, 47, 118, 47, 47, 47, 47, 2, 120, 47, 47, 118, 118, 47, 47, 47, 47, 47, 47, 10, 10, 70, 29, 25, 198
db 126, 3, 10, 10, 10, 47, 47, 47, 118, 118, 2, 2, 47, 120, 47, 47, 118, 118, 118, 118, 118, 47, 47, 46, 10, 10, 71, 71, 141, 198
db 126, 3, 10, 10, 10, 47, 47, 47, 118, 47, 2, 2, 120, 120, 2, 47, 47, 118, 47, 47, 118, 47, 47, 47, 47, 47, 47, 47, 2, 198
db 126, 3, 10, 10, 10, 47, 47, 118, 118, 47, 47, 47, 2, 120, 2, 47, 47, 47, 47, 47, 47, 2, 120, 120, 120, 47, 47, 47, 2, 198
db 126, 3, 10, 10, 72, 10, 46, 10, 47, 47, 2, 2, 120, 120, 2, 47, 47, 47, 46, 10, 10, 10, 47, 47, 2, 118, 118, 47, 2, 198
db 126, 124, 145, 10, 10, 10, 10, 10, 47, 2, 120, 120, 2, 120, 2, 47, 47, 118, 47, 10, 72, 10, 10, 10, 10, 10, 47, 118, 145, 198
db 126, 3, 125, 47, 10, 10, 10, 47, 2, 2, 2, 2, 47, 120, 10, 47, 118, 2, 2, 2, 10, 10, 10, 10, 29, 71, 10, 143, 126, 198
db 126, 3, 125, 118, 10, 10, 47, 47, 120, 2, 118, 47, 47, 120, 10, 47, 2, 2, 120, 120, 2, 47, 47, 10, 15, 71, 72, 25, 126, 198
db 126, 3, 125, 126, 145, 118, 118, 118, 118, 118, 47, 47, 47, 118, 10, 2, 2, 118, 2, 120, 120, 2, 47, 47, 47, 47, 145, 126, 126, 198
db 126, 3, 125, 126, 125, 145, 118, 118, 118, 47, 47, 47, 47, 118, 10, 2, 2, 118, 2, 2, 120, 2, 118, 47, 47, 145, 125, 125, 126, 198
db 126, 3, 125, 125, 125, 122, 145, 2, 47, 47, 47, 46, 10, 118, 46, 2, 2, 118, 118, 118, 2, 2, 2, 2, 145, 126, 126, 125, 126, 198
db 126, 3, 125, 125, 125, 125, 125, 145, 145, 118, 10, 10, 71, 118, 47, 2, 2, 118, 118, 118, 118, 145, 122, 122, 126, 126, 125, 125, 126, 198
db 126, 3, 125, 125, 125, 125, 125, 125, 126, 145, 10, 26, 26, 118, 118, 120, 2, 118, 2, 2, 2, 145, 126, 126, 125, 125, 125, 125, 126, 198
db 126, 3, 125, 125, 125, 125, 125, 125, 126, 125, 125, 149, 149, 118, 118, 120, 2, 2, 125, 125, 125, 125, 126, 125, 125, 125, 125, 125, 126, 198
db 126, 125, 126, 196, 196, 196, 196, 196, 198, 198, 198, 198, 198, 196, 196, 196, 196, 196, 198, 198, 198, 198, 198, 198, 196, 196, 196, 196, 198, 198



no_visitado dw 30
			dw 30
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
		db 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12


fila 	dw 0           ; referncias para el tablero
columna  dw 120          		
estado	dw 0
actual db 0		;casilla sobre la que se encuentra la rana, uno visitado, cero no visitado


roca dw 30 ;ancho
	 dw 30 ;alto
db 128, 124, 124, 125, 125, 125, 125, 125, 125, 125, 125, 124, 124, 124, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 149
db 128, 124, 124, 124, 124, 124, 124, 124, 124, 124, 148, 25, 25, 25, 25, 25, 25, 25, 25, 25, 172, 150, 125, 125, 125, 124, 124, 124, 124, 149
db 128, 124, 124, 124, 124, 124, 124, 124, 124, 172, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 25, 162, 21, 220, 220, 125, 125, 124, 124, 149
db 128, 124, 124, 124, 124, 124, 124, 124, 25, 7, 28, 27, 26, 26, 26, 26, 26, 26, 26, 26, 25, 163, 22, 21, 21, 220, 125, 124, 124, 149
db 128, 124, 124, 124, 124, 124, 124, 25, 28, 28, 28, 28, 27, 26, 26, 26, 26, 26, 26, 26, 24, 163, 22, 21, 236, 21, 125, 125, 124, 149
db 128, 124, 124, 124, 124, 124, 25, 28, 28, 28, 28, 28, 28, 27, 26, 26, 26, 26, 26, 26, 25, 163, 22, 21, 21, 21, 220, 125, 124, 149
db 128, 124, 124, 124, 124, 25, 7, 28, 28, 28, 28, 28, 28, 28, 27, 26, 26, 26, 26, 26, 25, 163, 22, 21, 236, 21, 244, 125, 125, 149
db 128, 124, 124, 124, 172, 7, 28, 28, 28, 28, 28, 28, 28, 28, 28, 27, 26, 26, 26, 26, 25, 163, 22, 236, 236, 21, 21, 220, 125, 149
db 128, 124, 124, 172, 7, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 7, 27, 26, 26, 26, 24, 163, 22, 21, 236, 236, 236, 220, 125, 149
db 128, 124, 148, 7, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 7, 27, 26, 26, 25, 163, 22, 236, 21, 21, 21, 220, 125, 149
db 128, 148, 7, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 27, 26, 25, 163, 22, 21, 236, 236, 236, 21, 220, 151
db 128, 148, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 27, 26, 25, 163, 22, 236, 236, 236, 21, 21, 220, 151
db 128, 148, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 7, 26, 25, 24, 163, 22, 21, 21, 236, 236, 236, 220, 151
db 128, 172, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 7, 26, 25, 24, 24, 163, 162, 21, 21, 236, 236, 21, 220, 151
db 128, 148, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 7, 26, 25, 24, 24, 24, 24, 24, 8, 21, 236, 236, 236, 220, 151
db 128, 148, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 7, 26, 25, 24, 24, 24, 24, 24, 24, 24, 8, 21, 236, 21, 220, 151
db 128, 148, 28, 28, 28, 28, 28, 28, 28, 28, 28, 7, 7, 7, 26, 25, 24, 24, 24, 24, 24, 24, 24, 24, 162, 21, 236, 21, 220, 151
db 128, 148, 28, 28, 28, 28, 28, 28, 28, 7, 7, 7, 26, 26, 25, 24, 24, 24, 24, 24, 24, 24, 24, 24, 163, 8, 21, 21, 220, 151
db 128, 148, 7, 28, 28, 28, 7, 28, 7, 27, 26, 26, 25, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 23, 21, 236, 220, 151
db 128, 148, 26, 26, 26, 26, 26, 26, 26, 26, 25, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 163, 22, 21, 220, 151
db 128, 149, 23, 24, 25, 25, 25, 24, 25, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 23, 22, 220, 151
db 128, 124, 149, 23, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 163, 22, 220, 151
db 128, 124, 124, 149, 23, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 163, 21, 220, 151
db 128, 124, 124, 124, 149, 23, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 8, 21, 220, 151
db 128, 124, 124, 124, 125, 150, 23, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 162, 21, 220, 126, 151
db 128, 124, 124, 124, 124, 125, 150, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 162, 21, 220, 126, 126, 151
db 128, 124, 124, 124, 124, 125, 125, 244, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 220, 126, 126, 125, 149
db 128, 124, 124, 124, 124, 124, 124, 125, 220, 220, 220, 220, 220, 220, 220, 220, 220, 220, 220, 220, 220, 220, 220, 220, 220, 126, 126, 125, 125, 149
db 128, 124, 124, 124, 124, 124, 124, 125, 125, 125, 125, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 125, 126, 125, 125, 124, 149
db 130, 149, 149, 149, 149, 149, 149, 149, 149, 149, 150, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 149, 149, 149, 151


rana	 dw 30 ;ancho
		dw 30 ;alto
db 109, 133, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 204, 226
db 133, 3, 3, 3, 3, 3, 3, 124, 124, 124, 124, 124, 3, 3, 3, 3, 3, 3, 3, 3, 3, 124, 124, 3, 3, 3, 3, 3, 124, 125
db 204, 3, 124, 124, 124, 124, 150, 113, 113, 113, 113, 229, 124, 124, 124, 124, 124, 124, 124, 124, 125, 144, 144, 125, 124, 124, 124, 124, 125, 196
db 204, 3, 124, 124, 21, 113, 113, 113, 42, 42, 6, 113, 113, 136, 125, 124, 124, 124, 125, 125, 144, 47, 47, 144, 125, 125, 124, 124, 125, 196
db 204, 3, 124, 21, 113, 6, 6, 42, 42, 42, 6, 6, 4, 113, 150, 124, 124, 124, 125, 125, 2, 46, 10, 10, 144, 125, 125, 124, 125, 196
db 204, 3, 124, 136, 6, 42, 43, 43, 42, 42, 6, 6, 4, 113, 229, 125, 124, 125, 125, 145, 47, 71, 70, 72, 47, 144, 124, 125, 125, 196
db 204, 3, 124, 136, 6, 42, 43, 43, 42, 42, 6, 6, 6, 6, 113, 229, 150, 151, 244, 117, 47, 96, 94, 72, 47, 47, 123, 125, 125, 196
db 204, 3, 124, 136, 6, 42, 43, 42, 42, 43, 43, 43, 42, 42, 4, 113, 113, 113, 113, 114, 140, 28, 28, 10, 47, 2, 122, 125, 125, 196
db 204, 3, 125, 208, 6, 42, 42, 42, 6, 42, 42, 42, 42, 42, 6, 112, 6, 6, 6, 6, 114, 136, 140, 47, 2, 47, 47, 145, 126, 197
db 204, 3, 125, 208, 6, 6, 6, 6, 6, 42, 42, 42, 42, 6, 6, 113, 113, 6, 6, 65, 136, 113, 114, 117, 2, 47, 47, 145, 126, 197
db 204, 124, 144, 114, 6, 6, 6, 6, 42, 42, 42, 42, 42, 42, 42, 6, 6, 6, 42, 30, 21, 161, 12, 114, 47, 47, 47, 2, 122, 197
db 204, 124, 47, 116, 114, 4, 6, 42, 42, 42, 42, 43, 43, 42, 42, 42, 6, 42, 42, 66, 140, 25, 64, 114, 117, 47, 47, 47, 118, 197
db 204, 124, 47, 140, 138, 6, 42, 42, 43, 43, 43, 43, 43, 43, 43, 42, 42, 42, 42, 42, 42, 42, 6, 4, 113, 117, 47, 47, 144, 220
db 204, 124, 47, 115, 4, 6, 42, 42, 43, 43, 43, 43, 43, 43, 43, 42, 43, 43, 42, 42, 42, 42, 42, 42, 4, 113, 117, 10, 166, 220
db 204, 124, 144, 114, 4, 6, 42, 42, 43, 67, 91, 67, 43, 43, 43, 43, 43, 43, 43, 42, 42, 43, 43, 43, 42, 4, 140, 71, 166, 220
db 204, 124, 2, 114, 4, 6, 42, 42, 43, 67, 67, 67, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 42, 6, 7, 96, 166, 220
db 204, 124, 47, 114, 4, 6, 42, 42, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 42, 42, 42, 42, 43, 42, 6, 113, 164, 72, 143, 220
db 204, 124, 47, 116, 6, 6, 42, 42, 42, 43, 43, 43, 43, 43, 42, 42, 42, 42, 42, 42, 42, 42, 42, 6, 113, 114, 117, 47, 118, 220
db 204, 124, 47, 140, 138, 6, 6, 42, 42, 43, 42, 43, 43, 42, 42, 42, 42, 42, 42, 43, 42, 42, 6, 113, 114, 118, 2, 47, 118, 220
db 204, 124, 144, 115, 113, 4, 6, 42, 42, 42, 42, 43, 42, 42, 42, 42, 6, 6, 43, 90, 22, 25, 64, 114, 117, 47, 2, 2, 144, 220
db 204, 3, 123, 113, 6, 6, 4, 6, 42, 42, 42, 42, 42, 6, 6, 6, 113, 4, 12, 29, 21, 136, 6, 115, 72, 10, 47, 144, 125, 196
db 204, 3, 125, 208, 6, 42, 42, 42, 6, 42, 42, 42, 42, 42, 6, 112, 4, 6, 42, 12, 113, 112, 114, 140, 95, 71, 72, 147, 126, 196
db 204, 124, 125, 208, 6, 42, 43, 42, 42, 42, 42, 42, 42, 42, 6, 112, 4, 6, 6, 4, 114, 188, 117, 46, 71, 72, 170, 148, 126, 197
db 204, 3, 125, 208, 6, 42, 43, 43, 42, 42, 43, 42, 42, 6, 113, 113, 114, 114, 114, 114, 119, 2, 2, 47, 47, 2, 123, 125, 126, 197
db 204, 3, 124, 136, 6, 42, 43, 43, 42, 6, 6, 6, 113, 113, 114, 118, 2, 2, 2, 2, 2, 2, 2, 2, 144, 123, 125, 125, 125, 197
db 204, 3, 124, 136, 113, 6, 42, 42, 43, 42, 42, 6, 4, 113, 117, 2, 2, 2, 2, 2, 2, 2, 2, 144, 125, 125, 125, 125, 125, 197
db 204, 3, 124, 125, 136, 113, 6, 6, 42, 42, 6, 4, 113, 113, 117, 2, 2, 2, 2, 2, 2, 122, 123, 123, 125, 125, 125, 125, 125, 196
db 204, 3, 124, 124, 125, 21, 229, 113, 6, 6, 4, 113, 235, 117, 118, 2, 2, 2, 122, 122, 122, 123, 125, 125, 125, 125, 124, 124, 125, 196
db 204, 124, 125, 125, 125, 125, 126, 207, 208, 208, 208, 202, 125, 121, 121, 121, 121, 122, 126, 126, 126, 126, 126, 126, 125, 125, 125, 125, 126, 196
db 204, 125, 125, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 196


;;

		
; 0 no visitado, 1 visitado, 2 roca, 3 rana
array_tablero 	DB 3,0,0,0,0,0
				DB 0,2,0,0,0,0
				DB 0,0,0,2,0,0
				DB 0,0,0,0,0,0
				DB 0,0,2,0,0,0
				DB 0,0,0,0,0,0


dir_rutina_original dd ?       ; Se guarda  para poder retornar
array_teclas db 128 dup (0)    ; Array de teclas				
fichas dw 1
datos ENDS


; Declaración del Segmento de Pila OBLIGATORIO

pila SEGMENT STACK 'STACK' ; Poner STACK es obligatorio

DB 128 dup ('pila')        ; Reservamos 512 bytes

pila ENDS


; Declaración del Segmento de Codigo OBLIGATORIO

codigo SEGMENT


 
main PROC FAR 

ASSUME CS:codigo, DS:datos, SS:pila

; Direccionar el segmento de datos con DS. OBLIGATORIO


 MOV AX,datos 
 MOV DS,AX

 MOV AX, pantallaVirtual
 MOV ES, AX

 PUSH 13h                             ; Modo gráfico (320*200).

CALL  modografico       ; Se cambia a 13h, 320*200
CALL guardar
XOR DI,DI
bucle:
  ;hay que meter
  ;PUSH seg dibujoLateral                ; Segmento memoria del fotograma.
  ;PUSH OFFSET dibujoLateral ; Desplazamiento de la dirección del fotograma.
  ;PUSH 0000              ; Coordenada x donde se quiere dibujar (X=100).
  ;PUSH 0000              ; Coordenada y donde se quiere dibujar (Y=100).
  ;PUSH seg pantallavirtual   
  ;call dibujafotograma
CALL pintar_tablero
PUSH SEG pantallavirtual           ; Dirección de la pantalla virtual.
PUSH OFFSET pantallavirtual        ; Desplazamiento pantalla virtual.
CALL refrescar
;estados 0,1,2,3 esquinas:arribaizq,arribadcha,abajoizq, abajodcha
;estados 4,5,6,7 pasillos sentido agujas reloj: 4 arriba
;estado 8 centro
cmp fichas,33 ;36 del tablero-3  de las rocas.
Jnz nofinalizar
call terminar
nofinalizar:
CMP estado, 0
JZ cero
CMP estado, 1
JZ mini_uno
CMP estado,2
JZ mini_dos
CMP estado,3
JZ mini_tres
CMP estado,4
JZ mini_4
CMP estado,5
JZ mini_cinco
CMP estado,6
Jz mini_seis
CMP estado,7
JZ mini_siete
CMP estado,8
JZ mini_ocho
;************************salto para que no falle al compilar**************************
   JMP no_entrar6
   mini_siete:
   JMP siete
   no_entrar6:
   ;******************************fin del salto***********************************
;************************salto para que no falle al compilar**************************
   JMP no_entrar16
   mini_cinco:
   JMP cinco
   no_entrar16:
   ;******************************fin del salto***********************************
   
;************************salto para que no falle al compilar**************************
   JMP no_entrar5
   mini_4:
   JMP cuatro
   no_entrar5:
   ;******************************fin del salto************************************   
;************************salto para que no falle al compilar**************************
   JMP no_entrar7
   mini_dos:
   JMP dos
   no_entrar7:
   ;******************************fin del salto***********************************
;************************salto para que no falle al compilar**************************
   JMP no_entrar0
   mini_uno:
   JMP uno
   no_entrar0:
   ;******************************fin del salto***********************************
;************************salto para que no falle al compilar**************************
   JMP no_entrar10
   mini_tres:
   JMP tres
   no_entrar10:
   ;******************************fin del salto***********************************   

;estado CERO esquina superior izquierda
cero:

CMP array_teclas[dch],1
	JnZ derecha_no
	mov array_teclas[dch],0
	call derecha0
	jmp bucle
derecha_no:	
CMP array_teclas[abj],1
	JnZ abajo_no
	mov array_teclas[abj],0
	call abajo0
	jmp bucle
abajo_no:
CMP array_teclas[escape], 1
   JZ  mini_finalizar0
MOv array_teclas[izq],0 ;limpiamos las teclas q sobran
MOv array_teclas[arr],0 ;limpiamos las teclas q sobran
JMP cero  


;************************salto para que no falle al compilar**************************
   JMP no_entrar11
   mini_seis:
   JMP seis
   no_entrar11:
;******************************fin del salto***********************************
;************************salto para que no falle al compilar**************************
   JMP no_entrar17
   mini_finalizar0:
   JMP mini_finalizar
   no_entrar17:
;******************************fin del salto************************************

;************************salto para que no falle al compilar**************************
   JMP no_entrar12
   mini_ocho:
   JMP mini_ocho2
   no_entrar12:
   ;******************************fin del salto***********************************
;estado UNO esquina superior derecha
uno:
CMP array_teclas[izq],1
	JnZ izquierda_no
	mov array_teclas[izq],0
	call izquierda1
	jmp bucle
izquierda_no:
CMP array_teclas[abj],1
    JnZ abajo_no1
	mov array_teclas[abj],0
	call abajo1
	jmp bucle
abajo_no1:
CMP array_teclas[escape], 1
   JZ  mini_finalizar
MOv array_teclas[dch],0 ;limpiamos las teclas q sobran
MOv array_teclas[arr],0 ;limpiamos las teclas q sobran
JMP uno

;************************salto para que no falle al compilar**************************
   JMP no_entrar4
   mini_finalizar:
   JMP medio_finalizar
   no_entrar4:
   ;******************************fin del salto************************************
;estado DOS esquina inferior izquierda
dos:
CMP array_teclas[arr],1
	JnZ arriba2_no
	mov array_teclas[arr],0
	call arriba2
	jmp bucle
arriba2_no:
CMP array_teclas[dch],1
	JnZ derecha2_no
	mov array_teclas[dch],0
	call derecha2
	jmp bucle
derecha2_no:
cMP array_teclas[escape],1
	JZ mini_finalizar
MOv array_teclas[abj],0 ;limpiamos las teclas q sobran
MOv array_teclas[izq],0 ;limpiamos las teclas q sobran
JMP dos

;************************salto para que no falle al compilar**************************
   JMP no_entrar20
   mini_ocho2:
   JMP ocho
   no_entrar20:
   ;******************************fin del salto***********************************
;estado TRES esquina inferior derecha
tres:
CMP array_teclas[izq],1
	JnZ izquierda3_no
	mov array_teclas[izq],0
	call izquierda3
	jmp bucle
izquierda3_no:
CMP array_teclas[arr],1
	JnZ arriba3_no
	mov array_teclas[arr],0
	call arriba3
	jmp bucle
arriba3_no:
CMP array_teclas[escape],1
	JZ mini_finalizar
MOv array_teclas[dch],0 ;limpiamos las teclas q sobran
MOv array_teclas[abj],0 ;limpiamos las teclas q sobran
JMP tres

;estado CUATRO pasillo superior
cuatro:
CMP array_teclas[dch],1
	JnZ derecha4_no
	mov array_teclas[dch],0
	call derecha4
	jmp bucle
derecha4_no:
CMP array_teclas[izq],1
	JnZ izquierda4_no
	mov array_teclas[izq],0
	call izquierda4
	jmp bucle
izquierda4_no:
CMP array_teclas[abj],1
	JnZ abajo4_no
	mov array_teclas[abj],0
	call abajo4
	jmp bucle
abajo4_no:
CMP array_teclas[escape], 1
   JZ  medio_finalizar
MOv array_teclas[arr],0 ;limpiamos las teclas q sobran
JMP cuatro
;************************salto para que no falle al compilar**************************
   JMP no_entrar9
   medio_finalizar:
   JMP finalizar
   no_entrar9:
;******************************fin del salto***********************************
;estado CINCO pasillo derecho
cinco:
CMP array_teclas[abj],1
	JZ abajo5
CMP array_teclas[arr],1
	JZ arriba5
CMP array_teclas[izq],1
	JnZ izquierda5_no
	mov array_teclas[izq],0
	call izquierda5
	jmp bucle
izquierda5_no:
CMP array_teclas[escape], 1
   JZ  medio_finalizar
MOv array_teclas[dch],0 ;limpiamos las teclas q sobran
JMP cinco

arriba5:
mov array_teclas[arr],0
CMP DI,11
Jz sigo57
call sigoAr7
jmp bucle
sigo57:
MOV estado,1
call sigoAr7
jmp bucle
abajo5:
mov array_teclas[abj],0
CMP DI,29
JZ vesig7
call sigoA7
jmp bucle
vesig7:
MOV estado,3
call sigoA7
jmp bucle 
;estado SEIS pasillo inferior
seis:
CMP array_teclas[dch],1
	JnZ derecha6_no
	mov array_teclas[dch],0
	call derecha6
	jmp bucle
derecha6_no:
CMP array_teclas[izq],1
	JnZ izquierda6_no
	mov array_teclas[izq],0
	call izquierda6
	jmp bucle
izquierda6_no:
CMP array_teclas[arr],1
	JnZ arriba6_no
	mov array_teclas[arr],0
	call arriba6
	jmp bucle
arriba6_no:
CMP array_teclas[escape],1
	JZ super_finalizar
MOv array_teclas[abj],0 ;limpiamos las teclas q sobran
JMP seis




;************************salto para que no falle al compilar**************************
   JMP no_entrar13
   mini_sigo4:
   JMP sigo4
   no_entrar13:
   ;******************************fin del salto************************************



;************************salto para que no falle al compilar**************************
   JMP no_entrar19
   mini_sigoI4:
   JMP sigoI4
   no_entrar19:
   ;******************************fin del salto***********************************
;************************salto para que no falle al compilar**************************
   JMP no_entrar8
   super_finalizar:
   JMP finalizar
   no_entrar8:
   ;******************************fin del salto***********************************
   ;estado SIETE pasillo izquierda
siete:
CMP array_teclas[abj],1
	JnZ abajo7_no
	mov array_teclas[abj],0
	call abajo7
	jmp bucle
abajo7_no:
CMP array_teclas[arr],1
	JnZ arriba7_no
	mov array_teclas[arr],0
	call arriba7
	jmp bucle
arriba7_no:
CMP array_teclas[dch],1
	JnZ derecha7_no
	mov array_teclas[dch],0
	call derecha7
	jmp bucle
derecha7_no:
CMP array_teclas[escape], 1
   JZ  super_finalizar
MOv array_teclas[izq],0 ;limpiamos las teclas q sobran
JMP siete


;estado OCHO centro
ocho:
CMP array_teclas[escape], 1
  JZ  finalizar
CMP array_teclas[abj],1
	JnZ abajo8_no
	mov array_teclas[abj],0
	call abajo8
	jmp bucle
abajo8_no:
CMP array_teclas[arr],1
	JnZ arriba8_no
	mov array_teclas[arr],0
	call arriba8
	jmp bucle
arriba8_no:
CMP array_teclas[izq],1
	JnZ izquierda8_no
	mov array_teclas[izq],0
	call izquierda8
	jmp bucle
izquierda8_no:
CMP array_teclas[dch],1
	JnZ derecha8_no
	mov array_teclas[dch],0
	call derecha8
	jmp bucle
derecha8_no:
JMP ocho
;fin del juego
finalizar:
CALL restaurar

;pausa
PUSH 02h                  ; Vuelta al modo texto.
CALL ModoGrafico       


MOV AX, 4C00h           ; Termina el programa, se sale
INT 21h         
main ENDP ; Fin del procedimiento principal



pintar_tablero PROC FAR
	PUSH BP
	MOV BP,SP
	
	PUSH CX
	PUSH BX
	PUSH DI
	
	MOV CX,6
	MOV BX,6
	XOR DI,DI
	
ancho:
largo:
   ;pinta no visitado, array=0
   CMP array_tablero[DI],0
   JNZ visto
   PUSH SEG no_visitado                   ; Segmento sprite.
   PUSH OFFSET no_visitado               ; Desplazamiento del sprite.
   PUSH fila
   PUSH columna
   PUSH SEG pantallavirtual           ; Dirección de la pantalla virtual.

   CALL  dibujaFotograma  
   JMP ranas
   
   visto:
   PUSH SEG visitado                   ; Segmento sprite.
   PUSH OFFSET visitado               ; Desplazamiento del sprite.
   PUSH fila
   PUSH columna
   PUSH SEG pantallavirtual           ; Dirección de la pantalla virtual.
   
   CALL  dibujaFotograma     
   
   ;************************salto para que no falle al compilar**************************
   JMP no_entrar2
   mini_salto_largo:
   JMP largo
   no_entrar2:
   ;******************************fin del salto************************************
   ;************************salto para que no falle al compilar**************************
   JMP no_entrar
   mini_salto_ancho:
   JMP ancho
   no_entrar:
   ;******************************fin del salto************************************
   
   ;pinta rana si array=3
   ranas:
   CMP array_tablero[DI],3
   JNZ rocas
   PUSH SEG rana                   ; Segmento sprite.
   PUSH OFFSET rana               ; Desplazamiento del sprite.
   PUSH fila
   PUSH columna
   PUSH SEG pantallavirtual           ; Dirección de la pantalla virtual.

   CALL  dibujaFotograma 
   
   ;pinta roca si array=2
   rocas:
   CMP array_tablero[DI],2
   JNZ no_roca
   PUSH SEG roca                   ; Segmento sprite.
   PUSH OFFSET roca               ; Desplazamiento del sprite.
   PUSH fila
   PUSH columna
   PUSH SEG pantallavirtual           ; Dirección de la pantalla virtual.

   CALL  dibujaFotograma  
   ;************************salto para que no falle al compilar**************************
   JMP no_entrar3
   mini_salto_ancho2:
   JMP mini_salto_ancho
   no_entrar3:
   ;******************************fin del salto************************************
   no_roca:
   ;pinta
   INC DI
   ADD columna,31
   DEC CX
   CMP CX,0
   JNZ mini_salto_largo
   

ADD fila,31
SUB columna,186
MOV CX,6
DEC BX
CMP BX,0
JNZ mini_salto_ancho2
   
    ;CALL refrescar      
   MOV WORD PTR[fila],0
   MOV WORD PTR[columna],120
   POP DI
   POP BX
   POP CX
   MOV SP, BP
   POP BP
   RETF 

pintar_tablero ENDP

TECLADO PROC  
		PUSH AX
		PUSH BX
		PUSH DS
		
		CLI               
			XOR AX, AX
			IN AL, 60H 
			XOR BX, BX 
			MOV BX, AX 
	    AND BL, 07FH   
	    TEST AL, 80H   
	    JZ PULSADA
	    
	    MOV AX, DATOS
			MOV DS, AX
	    XOR BH, BH
	    MOV ARRAY_TECLAS[BX], 1
	    JMP FIN_TECLADO
		    
		PULSADA:
	    MOV AX, DATOS
	    MOV DS, AX
	    XOR BH, BH
	    MOV ARRAY_TECLAS[BX], 0
		
		FIN_TECLADO:
	    PUSHF
	    CALL [DIR_RUTINA_ORIGINAL]
		
		BUCLE_TECLADO:
	    MOV AH,1
	    INT 16H
	    JZ SALIDA_TECLADO     
	    MOV AH,0
	    INT 16H               
	    JMP BUCLE_TECLADO     
		
		SALIDA_TECLADO: 
		  POP DS
	    POP BX
	    POP AX
		 
		STI		
		IRET

TECLADO ENDP


guardar PROC ; INSTALAMOS LA NUEVA RUTINA DE TECLADO.

	CLI        

	PUSH DS
	PUSH AX
	PUSH BX
	PUSH ES
 
	
	MOV AH, 35H
	MOV AL, 09H
	INT 21H    
	MOV WORD PTR [DIR_RUTINA_ORIGINAL], BX 
	MOV WORD PTR [DIR_RUTINA_ORIGINAL+2], ES

	POP ES
	POP BX
	POP AX
	POP DS

	STI
	
	CLI
	
	PUSH DS
	PUSH AX
	PUSH BX
	PUSH DX
	
  MOV AH, 25H                            
  MOV AL, 09H                            
  MOV BX, SEG WORD PTR TECLADO           
  MOV DS, BX
  MOV DX, OFFSET TECLADO
  INT 21H
  
 	POP DX
  POP BX
  POP AX
  POP DS

	STI            ; SE ACTIVAN INTERRUPCIONES.
	
	RET

guardar ENDP	

;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

restaurar PROC                       ; VOLVEMOS A LA RUTINA ORIGINAL.

;RESTAURAMOS LA RUTINA ORIGINAL DEL TECLADO.

CLI           ; SE INHIBEN INTERRUPCIONES.

	PUSH AX
	PUSH DX
	PUSH DS
	
  MOV AH, 25H                            ; RESTAURAR LA RUTINA ORIGINAL DEL TECLADO.
  MOV AL, 09H                            ; NÚMERO DEL VECTOR DE INTERRUPCIÓN A CAMBIAR.
  MOV DX, WORD PTR [DIR_RUTINA_ORIGINAL] 
  MOV DS, WORD PTR [DIR_RUTINA_ORIGINAL+2]   
  INT 21H
  
  POP DS
 	POP DX 
	POP AX
	
STI          ; SE ACTIVAN INTERRUPCIONES.
RET

restaurar ENDP;

derecha0 PROC FAR
push bp
MOv bp,sp
cmp array_tablero[DI+1],2
JZ find0
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz arr0
DEC fichas
DEC fichas
mov array_tablero[DI],0
arr0:
INC DI
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
MOV estado,4
find0:
pop bp
retf
derecha0 endp

abajo0 PROC FAR
push bp
MOv bp,sp
cmp array_tablero[DI+6],2
JZ fina0
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz arb0
DEC fichas
DEC fichas
mov array_tablero[DI],0
arb0:
ADD DI,6
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
MOV estado,7
fina0:
pop bp
retf
abajo0 endp

izquierda1 PROC FAR
push bp
MOv bp,sp
cmp array_tablero[DI-1],2
JZ fini1
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz izq1
DEC fichas
DEC fichas
mov array_tablero[DI],0
izq1:
DEC DI
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
MOV estado,4
fini1:
pop bp
retf
izquierda1 endp

abajo1 PROC FAR
push bp
MOv bp,sp
cmp array_tablero[DI+6],2
JZ fina1
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz ab1
DEC fichas
DEC fichas
mov array_tablero[DI],0
ab1:
ADD DI,6
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
MOV estado,5
fina1:
pop bp
retf
abajo1 endp

arriba2 PROC FAR
push bp
MOv bp,sp
cmp array_tablero[DI-6],2
JZ finar1
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz arb2
DEC fichas
DEC fichas
mov array_tablero[DI],0
arb2:
SUB DI,6
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
MOV estado,7
finar1:
pop bp
retf
arriba2 endp

derecha2 PROC FAR
push bp
mov bp,sp
cmp array_tablero[DI+1],2
JZ find2
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz dch2
DEC fichas
DEC fichas
mov array_tablero[DI],0
dch2:
INC DI
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
MOV estado,6
find2:
pop bp
retf
derecha2 endp

izquierda3 PROC FAR
push bp
mov bp,sp
cmp array_tablero[DI-1],2
JZ fini3
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz izq3
DEC fichas
DEC fichas
mov array_tablero[DI],0
izq3:
DEC DI
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
MOV estado,6
fini3:
pop bp
retf
izquierda3 endp

arriba3 PROC FAR
push bp
mov bp,sp
cmp array_tablero[DI-6],2
JZ fina3
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz arb3
DEC fichas
DEC fichas
mov array_tablero[DI],0
arb3:
SUB DI,6
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
MOV estado,5
pop bp
fina3:
retf
arriba3 endp

abajo4 PROC FAR
push bp
mov bp,sp
cmp array_tablero[DI+6],2
JZ fina4
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz ab4
DEC fichas
DEC fichas
mov array_tablero[DI],0
ab4:
ADD DI,6
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
MOV estado,8
fina4:
pop bp
retf
abajo4 endp

derecha4 PROC FAR
push bp
mov bp,sp
CMP DI,4
JNZ sigo4
MOV estado,1
sigo4:
cmp array_tablero[DI+1],2
JZ find4
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz dch4
DEC fichas
DEC fichas
mov array_tablero[DI],0
dch4:
INC DI
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
find4:
pop bp
retf
derecha4 endp

izquierda4 PROC FAR
push bp
mov bp,sp
CMP DI,1
JNZ sigoI4
MOV estado,0
sigoI4:
cmp array_tablero[DI-1],2
JZ fini4
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz izq4
DEC fichas
DEC fichas
mov array_tablero[DI],0
izq4:
DEC DI
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
fini4:
pop bp
retf
izquierda4 endp

izquierda5 PROC FAR
push bp
mov bp,sp
cmp array_tablero[DI-1],2
JZ fini5
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz izq5
DEC fichas
DEC fichas
mov array_tablero[DI],0
izq5:
DEC DI
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
MOV estado,8
fini5:
pop bp
retf
izquierda5 endp

sigoA7 PROC FAR
push bp
mov bp,sp
cmp array_tablero[DI+6],2
JZ fina7
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz a70
DEC fichas
DEC fichas
mov array_tablero[DI],0
a70:
ADD DI,6
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
fina7:
pop bp
retf
sigoA7 endp

sigoAr7 PROC FAR
push bp
mov bp,sp
cmp array_tablero[DI-6],2
JZ finar7
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz ar70
DEC fichas
DEC fichas
mov array_tablero[DI],0
ar70:
SUB DI,6
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
finar7:
pop bp
retf
sigoAr7 endp

arriba6 PROC FAR
push bp
mov bp,sp
cmp array_tablero[DI-6],2
JZ fina6
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz ar6
DEC fichas
DEC fichas
mov array_tablero[DI],0
ar6:
SUB DI,6
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
MOV estado,8
fina6:
pop bp
retf
arriba6 endp

izquierda6 PROC FAR
push bp
mov bp,sp
CMP DI,31
JZ sigoI46
cmp array_tablero[DI-1],2
JZ acaba6
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz izq6
DEC fichas
DEC fichas
mov array_tablero[DI],0
izq6:
DEC DI
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
jmp acaba6
sigoI46:
MOV estado,2
cmp array_tablero[DI-1],2
JZ acaba6
mov al,actual
mov array_tablero[DI],1
cmp al,0
jz sig46
mov array_tablero[DI],0
sig46:
DEC DI
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
acaba6:
pop bp
retf
izquierda6 endp

derecha6 PROC FAR
push bp
mov bp,sp
CMP DI,34
JZ sigod6
cmp array_tablero[DI+1],2
JZ fin6
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz dch6
DEC fichas
DEC fichas
mov array_tablero[DI],0
dch6:
INC DI
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
jmp fin6
sigod6:
MOV estado,3
cmp array_tablero[DI+1],2
JZ fin6
mov al,actual
mov array_tablero[DI],1
cmp al,0
jz sigd6
mov array_tablero[DI],0
sigd6:
INC DI
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
fin6:
pop bp
retf
derecha6 endp

derecha7 PROC FAR
push bp 
mov bp,sp
cmp array_tablero[DI+1],2
JZ find7
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz d7
DEC fichas
DEC fichas
mov array_tablero[DI],0
d7:
INC DI
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
MOV estado,8
find7:
pop bp
retf
derecha7 endp

arriba7 PROC FAR
push bp
mov bp,sp
CMP DI,6
JNZ sig7
MOV estado,0
sig7:
cmp array_tablero[DI-6],2
JZ final7
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz arb7
DEC fichas
DEC fichas
mov array_tablero[DI],0
arb7:
SUB DI,6
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
final7:
pop bp
retf
arriba7 endp


abajo7 PROC FAR
push bp
mov bp,sp
CMP DI,24
JNZ sab7
MOV estado,2
sab7:
cmp array_tablero[DI+6],2
JZ abj7
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz ab7
DEC fichas
DEC fichas
mov array_tablero[DI],0
ab7:
ADD DI,6
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
abj7:
pop bp
retf
abajo7 endp

izquierda8 PROC FAR
push bp
mov bp,sp
CMP DI,7
JZ veteiz8
CMP DI,13
JZ veteiz8
CMP DI,19
JZ veteiz8
CMP DI,25
JZ veteiz8
cmp array_tablero[DI-1],2
JZ fin8i
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz iz8
DEC fichas
DEC fichas
mov array_tablero[DI],0
iz8:
DEC DI
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
jmp fin8i
veteiz8:
MOV estado,7
cmp array_tablero[DI-1],2
JZ fin8i
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz izq80
DEC fichas
DEC fichas
mov array_tablero[DI],0
izq80:
DEC DI
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
fin8i:
pop bp
retf
izquierda8 endp

abajo8 PROC FAR
push bp
mov bp,sp
CMP DI,25
JZ veteab6
CMP DI,26
JZ veteab6
CMP DI,27
JZ veteab6
CMP DI,28
JZ veteab6
cmp array_tablero[DI+6],2
JZ fina8
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz ab8
DEC fichas
DEC fichas
mov array_tablero[DI],0
ab8:
ADD DI,6
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
jmp fina8
veteab6:
MOV estado,6
cmp array_tablero[DI+6],2
JZ fina8
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz ab8b
DEC fichas
DEC fichas
mov array_tablero[DI],0
ab8b:
ADD DI,6
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
fina8:
pop bp
retf
abajo8 endp

derecha8 PROC FAR
push bp
mov bp,sp
CMP DI,10
JZ vetedc8
CMP DI,16
JZ vetedc8
CMP DI,22
JZ vetedc8
CMP DI,28
JZ vetedc8
cmp array_tablero[DI+1],2
JZ fin8d
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz dch8
DEC fichas
DEC fichas
mov array_tablero[DI],0
dch8:
INC DI
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
jmp fin8d
vetedc8:
MOV estado,5
cmp array_tablero[DI+1],2
JZ fin8d
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz dch8b
DEC fichas
DEC fichas
mov array_tablero[DI],0
dch8b:
INC DI
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
fin8d:
pop bp
retf
derecha8 endp

arriba8 PROC FAR
push bp
mov bp,sp
CMP DI,7
JZ vetear6
CMP DI,8
JZ vetear6
CMP DI,9
JZ vetear6
CMP DI,10
JZ vetear6
cmp array_tablero[DI-6],2
JZ fin8a
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz arr8
DEC fichas
DEC fichas
mov array_tablero[DI],0
arr8:
SUB DI,6
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
jmp fin8a
vetear6:
MOV estado,4
cmp array_tablero[DI-6],2
JZ fin8a
mov al,actual
mov array_tablero[DI],1
INC fichas
cmp al,0
jz arr8b
DEC fichas
DEC fichas
mov array_tablero[DI],0
arr8b:
SUB DI,6
mov al,array_tablero[DI]
mov actual,al
MOV array_tablero[DI],3
fin8a:
pop bp
retf
arriba8 endp

terminar proc far
push bp
mov bp,sp 
MOV AX, 4C00h           ; Termina el programa, se sale
INT 21h         
pop bp
terminar endp
codigo ENDS
END main 