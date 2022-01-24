#include<ti/csl/csl_tsc.h>
#include<stdio.h>
#define N 128
int product(short *a,short *b);
int _prod_asm1(short *a,short *b);
int prod_pipl(short *a,short *b);
int prod_piplSIMD(short *a,short *b);
int _prod_asmDOTP4H(short *a,short *b);
int main(void) {
	CSL_Uint64 a, b, Nb_Cycle;
     short A[N];
     short B[N];
     int i,s;
     for (i=0;i<N;i++){
    	 A[i]=i;
    	 B[i]=N-i;
     }
     _CSL_tscEnable();
 	 a = _CSL_tscRead();
    s= _prod_asmDOTP4H(A,B);
     b=_CSL_tscRead();
     Nb_Cycle=b-a;
     printf("le produit scalaire est : %d\n",s);
     printf("le nbr des cycles est : %d ",Nb_Cycle);
 return 0;
}
  int product(short *a, short *b){
    int sum=0;
    int i;
    int y;
    for(i=0; i<N; i++){
           y=a[i]*b[i];
           sum=sum+y;
     }
   return sum ;

 }

