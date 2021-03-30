#include <stdio.h>
#include <math.h>

#include "SAMPLER.H"

float fx(float x){
    return 1.0/x;
}

void simps(float lower, float upper, float tol, float *sum){
    int i,pieces;
    float x,delta_x,even_sum,odd_sum,end_sum;
    pieces=2;
    delta_x=(upper-lower)/pieces;
    even_sum=0.0;
    odd_sum=1.0/(lower+delta_x);
    end_sum=1.0/lower+1.0/upper;
    float sum1;
    *sum=(end_sum+4.0*odd_sum)*delta_x/3.0;
    do{
        pieces=pieces*2;
        sum1=(*sum);
        delta_x=(upper-lower)/pieces;
        even_sum=even_sum+odd_sum;
        odd_sum=0.0;
        for(i=1;i<=pieces/2;i++){
            x=lower+delta_x*(2.0*i-1.0);
            odd_sum=odd_sum+1.0/x;
        }
        *sum=(end_sum+4.0*odd_sum+2.0*even_sum)*delta_x/3.0;
    }while(!((*sum!=sum1)&&(fabs(*sum-sum1)<=fabs(tol*(*sum)))));
}

int main()
{
    const float tol = 1.0E-6;
    float sum,upper,lower;
    lower=1.0;
    upper=9.0;
	
	SAMPLE;
    simps(lower,upper,tol,&sum);
	SAMPLE;
	
    return 0;
}