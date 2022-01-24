
            .global prod_pipl
prod_pipl:
       MVK .S1 128,A0
       MVK .S1 0,A5
       MVK .S2 0,b5

              ldw .D1  *A4++,A1
      ||      ldw .D2  *B4++,B1

              ldw .D1  *A4++,A1
      ||      ldw .D2  *B4++,B1
      || [A0] sub .S1  A0,2,A0

              ldw .D1  *A4++,A1
       ||      ldw .D2  *B4++,B1
       || [A0] sub .S1  A0,2,A0
       || [A0] B   .S2  loop

         ldw .D1  *A4++,A1
       ||      ldw .D2  *B4++,B1
       || [A0] sub .S1  A0,2,A0
       || [A0] B   .S2  loop

         ldw .D1  *A4++,A1
       ||      ldw .D2  *B4++,B1
       || [A0] sub .S1  A0,2,A0
       || [A0] B   .S2  loop


             ldw .D1  *A4++,A1
       ||      ldw .D2  *B4++,B1
       || [A0] sub .S1  A0,2,A0
       || [A0] B    .S2  loop
       ||      mpy  .M1x A1,B1,A2
       ||      mpyh  .M2x A1,B1,B2

        ldw .D1  *A4++,A1
       ||      ldw .D2  *B4++,B1
       || [A0] sub .S1  A0,2,A0
       || [A0] B    .S2  loop
       ||      mpy  .M1x A1,B1,A2
       ||      mpyh  .M2x A1,B1,B2

loop:	   ldw .D1  *A4++,A1
 ||      ldw .D2  *B4++,B1
 || [A0] sub .S1  A0,2,A0
 || [A0] B    .S2  loop
 ||      mpy  .M1x A1,B1,A2
 ||     mpyh  .M2x A1,B1,B2
 ||      add .L1  A5,A2,A5
 ||      add .L2  B5,B2,B5

      add .L1 A5,B5,A4
      B .S2 B3
      NOP 5


