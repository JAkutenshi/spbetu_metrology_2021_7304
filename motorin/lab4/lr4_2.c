#include <math.h>
#include <stdio.h>
#include "Sampler.h"

float   ordr = 1, x, ans1;
int     done = 0;

float bessy () {
	const  float small	= 1.0E-8;
	const  float euler	= 0.57721566;
	const  float pi 	= 3.1415926;
	const  float pi2	= 0.63661977;

	int     j;
	float 	x2,sum,sum2,t,t2,
		ts,term,xx,y0,y1,
		ya,yb,yc,ans,a,b,
		sina,cosa;

	SAMPLE;
	if (x<12) {
		SAMPLE;
		xx = 0.5 * x;
		x2 = xx * xx;
		t= log(xx) + euler;
		sum = 0.0;
		term = t;
		y0 = t;
		j = 0;
		SAMPLE;
		do{
			SAMPLE;
			j+=1;
			SAMPLE;
			if (j != 1) {
				SAMPLE;
				sum = sum + 1 / (j - 1);
				SAMPLE;
			}
			SAMPLE;
			ts = t - sum;
			term = -x2 * term / (j * j)*(1 - 1/(j * ts));
			y0 += term;
			SAMPLE;
		}while ( fabs(term) >= small);
		SAMPLE;
		term = xx * (t - 0.5);
		sum = 0.0;
		y1 = term;
		j = 1;
		SAMPLE;
		do{
			SAMPLE;
			j = j + 1;
			sum = sum + 1.0 / (j - 1);
			ts = t - sum;
			term = (-x2 * term)/(j * (j - 1))*((ts - 0.5/j)/(ts + 0.5/(j - 1)));
			y1 = y1 + term;
			SAMPLE;
		}while (fabs(term) >= small);
		SAMPLE;
		y0 *= pi2;
		y1 = pi2 * (y1 - 1/x);
		SAMPLE;
		if (ordr==0.0) {
			SAMPLE;
			ans = y0;
			SAMPLE;
		}
		else {
			SAMPLE;
			if (ordr==1.0) {
				SAMPLE;
				ans = y1;
				SAMPLE;
			}
			else
			{
				SAMPLE;
				ts = 2.0 / x;
				ya = y0;
				yb = y1;
				SAMPLE;
				for (j=2;  j<ceil(ordr+0.01);j+1)
				{
					SAMPLE;
					yc = ts * (j - 1) * yb - ya;
					ya = yb;
					yb = yc;
					SAMPLE;
				}
				SAMPLE;
				ans = yc;
			}
			SAMPLE;
		}
		SAMPLE;
		return ans;
	}
	else	 return	 sqrt(2 /(pi * x)) * sin(x - pi/4 - ordr * pi/2);
}

void main (void)
{
	do{
		if (ordr<0.0) {done = 1;}
		else
		{
			do{
				x = 5;
			}while (x < 0.0);
			ans1 = bessy();		
			ordr = -1;
		}
	}while (done == 0);
}
