
          .global _prod_asmDOTP4H

_prod_asmDOTP4H:
        MVK .S1 128,A2
        MVK .S1 0,A7
        MVK .S2 0,B7
        
LOOP:      LDDW .D1 *A4++,A19:A18
 		  ||LDDW .D2 *B4++,B21:B20
		NOP 2
		SUB .S1 A2,4,A2
		[A2] 	B .S1 LOOP
		DOTP4H .M1 A19:A18,B21:B20,A7
		NOP 3
		ADD .L2 A7,B7,B7
		MV .S1 B7,A4
        B .S2 B3
        NOP 5
