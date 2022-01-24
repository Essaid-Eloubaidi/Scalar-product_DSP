
          .global _prod_asm1

_prod_asm1:
        MVK .S1 128,A2
        MVK .S1 0,A7
          MVK .S2 0,B7
LOOP:      LDW .D1 *A4++,A20
 		  ||LDW .D2 *B4++,B20
 		SUB .S1 A2,2,A2
 		[A2] 	B .S1 LOOP
		NOP 2
		MPY .M1 A20,B20,A30
		|| MPYH .M2 A20,B20,B30
		NOP
		ADD .L1 A30,A7,A7
		|| ADD .L2 B30,B7,B7
        ADD .L1 A7,B7,A4
        B .S2 B3
        NOP 5
