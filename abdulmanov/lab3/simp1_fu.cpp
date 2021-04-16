#include <stdio.h> 
#include <stdlib.h> 
#include "math.h"
#include "Sampler.h"

const double tol= 1.0E-6;

double fx(double x){
	return exp(-1.0*x/2.0);
}

double dfx(double x){
	return (-1.0*exp(-1.0*x/2.0)/2.0);
}

double simps(double lower,double upper,double tol,double sum){ 
	double x,delta_x,even_sum,odd_sum,end_sum,end_cor,sum1; 
	int pieces;

	pieces=2;
	delta_x=(upper-lower)/pieces; 
	odd_sum=fx(lower+delta_x);
	even_sum=0.0; 
	end_sum=fx(lower)+fx(upper); 
	end_cor=dfx(lower)-dfx(upper); 
	sum=(end_sum+4.0*odd_sum)*delta_x/3.0; 
	SAMPLE;
	do{
		pieces=pieces*2; 
		sum1=sum;
		delta_x=(upper-lower)/pieces; 
		even_sum=even_sum+odd_sum; 
		odd_sum=0.0;
		SAMPLE;
		for (int i=1;i<=pieces/2;i++){ 
			x=lower+delta_x*(2.0*i-1.0); 
			odd_sum=odd_sum+fx(x);
		}
		SAMPLE;
		sum=(7.0*end_sum+14.0*even_sum+16.00*odd_sum+end_cor*delta_x)*delta_x/15.0;
	} while ((sum!=sum1) & (abs(sum-sum1)<=abs(tol*sum))); 
	SAMPLE;
	return sum;
}

int main(void) {
	double sum=0.0; 
	double lower=1.0;
	double upper=9.0; 
	double res =0.0;
	res=simps(lower,upper,tol,sum); 
	printf("area= %lf ",res);
	return 0;
}