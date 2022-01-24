#include<ti/csl/csl_tsc.h>
#include<stdio.h>
#define N 128
float productf(float *a, float *b);
int main(void){
	CSL_Uint64 x, z, Nb_Cycle;
     float A[N];
     float B[N];
     int i;
     float s;
     for (i=0;i<N;i++){
    	 A[i]=1.0/(i+1);
    	 B[i]=2.0/(i+1);
        }
     _CSL_tscEnable();
 	 x = _CSL_tscRead();
    s= productf(A,B);
     z=_CSL_tscRead();
     Nb_Cycle=z-x;
     printf("le produit scalaire est : %f\n",s);
     printf("le nbr des cycles est : %llu ",Nb_Cycle);
 return 0;
}
  float productf(float *a, float *b){
    float sum=0;
    int i;
    float y;
    for(i=0; i<N; i++){
           y=a[i]*b[i];
           sum=sum+y;
     }
   return sum ;
   }
