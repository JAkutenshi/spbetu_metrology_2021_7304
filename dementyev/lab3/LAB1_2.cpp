1 #include <stdio.h>
2 #include <math.h>
3 #include "Sampler.h" 
4
5 double sum = 0.0;
6 double upper, lower;
7 const double tol = 1.0E-6;
8 double fx(double x) {
9	return 1.0 / sqrt(x);
10}
11
12void trap2(double lower, double upper, double tol){
13	SAMPLE;	
14	int pieces = 1;	
15	double x,delta_x,end_sum,mid_sum = 0.0,sum1;	
16	delta_x = ( upper - lower )/pieces;	
17	end_sum = fx(lower) + fx(upper);	
18	sum = end_sum * delta_x/2.0;	
19	SAMPLE;	
20	do {	
21		pieces = pieces * 2;	
22		sum1 = sum;	
23		delta_x = (upper - lower) / pieces;	
24		SAMPLE;	
25		for (int i = 1; i <= pieces/2; i++)	
26		{	
27			SAMPLE;	
28			x = lower + delta_x * (2.0 * i -1.0);
29			mid_sum = mid_sum + fx(x);	
30			SAMPLE;	
31		}	
32		SAMPLE;	
33		sum = ( end_sum + 2.0 * mid_sum ) * delta_x * 0.5;
34		SAMPLE;
35	} while (fabs(sum - sum1) > fabs(tol * sum));
36	SAMPLE;
37}
38
39int main() {
40	lower = 1.0;
41	upper = 9.0;
42	trap2(lower, upper, tol);
43	return 0; 
44}




