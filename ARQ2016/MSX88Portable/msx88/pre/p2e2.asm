	ORG	1000H
ABC	DB	41H

	ORG	2000H
	MOV	BX, OFFSET ASC
LAZO	INC	ASC
	INT	7
	CMP	ASC,255
	JNZ	LAZO
	INT	0
	END


