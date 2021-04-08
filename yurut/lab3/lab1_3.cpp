
#include "sampler.h"
#include <stdio.h>
#include <math.h>

double erf(double x)
{
	SAMPLE;
	const double sqrtpi = 1.7724538;
	const double t2 = 0.66666667;
	const double t3 = 0.66666667;
	const double t4 = 0.07619048;
	const double t5 = 0.01693122;
	const double t6 = 3.078403E-3;
	const double t7 = 4.736005E-4;
	const double t8 = 6.314673E-5;
	const double t9 = 7.429027E-6;
	const double t10 = 7.820028E-7;
	const double t11 = 7.447646E-8;
	const double t12 = 6.476214E-9;

	double x2, rez;
	int i;
	SAMPLE;
	x2 = x * x;
	rez = 2.0 * exp(-x2) / sqrtpi * (x * (1 + x2 * (t2 + x2 * (t3 + x2 * (t4 + x2 * (t5 + x2 * (t6 + x2 * (t7 + x2 * (t8 + x2 * (t9 + x2 * (t10 + x2 * (t11 + x2 * t12))))))))))));
	SAMPLE;
	return rez;
}

double erfc(double x)
{
	const double sqrtpi = 1.7724538;
	double rez, v;
	SAMPLE;
	v = 1.0 / (2.0 * x*x);
	rez = 1.0 / (exp(x*x) * x * sqrtpi * (1 + v / (1 + 2 * v / (1 + 3 * v / (1 + 4 * v / (1 + 5 * v / (1 + 6 * v / (1 + 7 * v / (1 + 8 * v / (1 + 9 * v / (1 + 10 * v / (1 + 11 * v / (1 + 12 * v )))))))))))));
	SAMPLE;
	return rez;
}

int main()
{
	double x, er, ec;
	int done;
	SAMPLE;
	done = 1;
	x = 3.0;
	SAMPLE;
	do { 
		SAMPLE;
		x -= 1; 
		SAMPLE; 
		if (x < 0.0) { 
			SAMPLE;
			done = 0;
			SAMPLE; 
		}
		else if (x == 0.0)
		{
			SAMPLE; 
			er = 0.0; 
			ec = 1.0; 
			SAMPLE;
		} 
		else 
		{
			SAMPLE;
			if (x < 1.5) 
			{
				SAMPLE;
				er = erf(x); 
				ec = 1.0 - er; 
				SAMPLE;
			} 
			else 
			{
				SAMPLE;
				ec = erfc(x); 
				er = 1.0 - ec; 
				SAMPLE;
			}
			SAMPLE; 
		}
	} while (done);
	SAMPLE;
	return 0;
}
