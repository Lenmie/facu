	ORG 1000H; Memoria de datos
NUM1 DW 5H
NUM2 DW 3H
RES  DW ?

	ORG 3000H ; Subrutina MUL
MUL:  PUSH BX
	  MOV BX, SP
	  PUSH CX
	  PUSH AX
	  PUSH DX
	  ADD BX, 6
	  MOV CX, [BX]
	  ADD BX, 2
	  MOV AX, [BX]
SUMA: ADD DX, AX
	  DEC CX
	  JNZ SUMA
	  SUB BX, 4
	  MOV AX, [BX]
	  MOV BX, AX
	  MOV [BX], DX
	  POP DX
	  POP AX
	  POP CX
	  POP BX
	  RET
	  
	ORG 2000H ; Programa principal
	  MOV AX, NUM1
	  PUSH AX
	  MOV AX, NUM2
	  PUSH AX
	  MOV AX, OFFSET RES
	  PUSH AX
	  MOV DX, 0
	  CALL MUL
	  POP AX
	  POP AX
	  POP AX
	  HLT

END
