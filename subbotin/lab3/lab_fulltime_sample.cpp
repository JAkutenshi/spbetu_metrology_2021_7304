#include <stdio.h>
#include <stdbool.h> 
#include <math.h>
#include "sampler.h"
typedef enum {false, true} bool;
double erf(double x){
    const double sqrtpi		= 1.7724538;
	double t2 		= 0.66666667;
	double t3		= 0.66666667;
	double t4		= 0.07619048;
	double t5		= 0.01693122;
	double t6		= 3.078403E-3;
	double t7		= 4.736005E-4;
	double t8		= 6.314673E-5;
	double t9		= 7.429027E-6;
	double t10		= 7.820028E-7;
	double t11		= 7.447646E-8;
	double t12		= 6.476214E-9;
	
	double x2, sum;
	x2 = x*x;
	sum = t5+x2*(t6+x2*(t7+x2*(t8+x2*(t9+x2*(t10+x2*(t11+x2*t12))))));
	return (2.0*exp(-x2)/sqrtpi*(x*(1+x2*(t2+x2*(t3+x2*(t4+x2*sum))))));
	
}

double erfc(double x){
    const double sqrtpi	= 1.7724538;
    double x2,v,sum;
    x2 = x*x;
    v = 1/(2*x2);
    sum=v/(1+8*v/(1+9*v/(1+10*v/(1+11*v/(1+12*v)))));
    sum=v/(1+3*v/(1+4*v/(1+5*v/(1+6*v/(1+7*sum)))));
    return (1.0/(exp(x2)*x*sqrtpi*(1+v/(1+2*sum))));
}

int main()
{
    SAMPLE;
	double x,er,ec;
	bool done;
    x = 2.0;
    done = false;
    do{
        if(x<0){
            done = true;
        }else if (x == 0){
            er = 0;
            ec = 1;
        }else if (x < 1.5){
            er = erf(x);
            ec = 1 - er;
        }else{
            ec = erfc(x);
            er = 1-ec;
        }
        x = x - 1; 
        
    }while (done == false);
    SAMPLE;
    return 0;
}
