	ORG 1000H
NUM1	DW	11111
	DW	22222
NUM2	DW	11111
	DW	33333

	ORG 3000H
SUM32:  ADD	AX,CX
	ADC	BX,DX
	RET
	
	ORG 2000H
	MOV	AX,NUM1
	MOV	BX,NUM2
	MOV	CX,NUM1+2
	MOV	DX,NUM2+2
	CALL	SUM32
	HLT
	END	
