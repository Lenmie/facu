; Memoria de Datos ORG 1000H
NUM1 	DB 5H
NUM2 	DB 3H

      ; Memoria de Instrucciones
      ORG 2000H

	  MOV AL, NUM1
 	  CMP AL, 0
	  JZ FIN
	  MOV AH, 0 
	  MOV DX, 0 
	  MOV CL, NUM2
LOOP: CMP   CL, 0
 	  JZ FIN
	  ADD DX, AX 
	  DEC CL
	  JMP LOOP
FIN:  HLT 
END

