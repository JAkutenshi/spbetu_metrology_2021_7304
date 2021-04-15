#include <math.h>
#include <stdio.h>
#include "Sampler.h"

float bessy (float x, float n) {
	const  float small	= 1.0E-8;
	const  float euler	= 0.57721566;
	const  float pi 	= 3.1415926;
	const  float pi2	= 0.63661977;

	int     j;
	float 	x2,sum,sum2,t,t2,
		ts,term,xx,y0,y1,
		ya,yb,yc,ans,a,b,
		sina,cosa;

	if (x<12) {
		xx = 0.5 * x;
		x2 = xx * xx;
		t= log(xx) + euler;
		sum = 0.0;
		term = t;
		y0 = t;
		j = 0;
		do{
			j=j+1;
			if (j != 1) {sum = sum + 1 / (j - 1);}
			ts = t - sum;
			term = -x2 * term / (j * j)*(1 - 1/(j * ts));
			y0 = y0 + term;
		}while ( fabs(term) >= small);
		term = xx * (t - 0.5);
		sum = 0.0;
		y1 = term;
		j = 1;
		do{
			j = j + 1;
			sum = sum + 1.0 / (j - 1);
			ts = t - sum;
			term = (-x2 * term)/(j * (j - 1))*((ts - 0.5/j)/(ts + 0.5/(j - 1)));
			y1 = y1 + term;
		}while (fabs(term) >= small);
		y0 = pi2 * y0;
		y1 = pi2 * (y1 - 1/x);
		if (n==0.0) {ans = y0;}
		else {
			if (n==1.0) {ans = y1;}
			else
			{
				ts = 2.0 / x;
				ya = y0;
				yb = y1;
				for (j=2;  j<ceil(n+0.01);j+1)
				{
					yc = ts * (j - 1) * yb - ya;
					ya = yb;
					yb = yc;
				}
				ans = yc;
			}
		}
		return ans;
	}
	else	 return	 sqrt(2 /(pi * x)) * sin(x - pi/4 - n * pi/2);
}

void main (void)
{
	float   x;
	float   ordr;
	int     done;
	float	ans;
	done = 0;
	ordr = 1;
	do{
		if (ordr<0.0) {done = 1;}
		else
		{
			do{
				x = 5;
			}while (x < 0.0);
			SAMPLE;
			ans = bessy(x,ordr);
			SAMPLE;			
			ordr = -1;
		}
	}while (done == 0)
}
