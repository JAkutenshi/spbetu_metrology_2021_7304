1 #include <stdio.h>
2 #include <math.h>
3 #include "Sampler.h"
4 double sum = 0.0;
5 double upper = 9.0, lower = 1.0;
6 const double tol = 1.0E-6;
7	
8 void trap2() {
9	SAMPLE;
10	int pieces = 1;		
11	double x,delta_x,end_sum,mid_sum = 0.0,sum1;		
12	delta_x = (upper - lower )/pieces;		
13	end_sum = 1.0/sqrt(lower) + 1.0/sqrt(upper);		
14	sum = end_sum * delta_x/2.0;		
15	SAMPLE;		
16	do {		
17		pieces = pieces * 2;		
18		sum1 = sum;		
19		delta_x = (upper - lower) / pieces;		
20		SAMPLE;		
21		for (int i = 1; i <= pieces/2; i++)		
22		{		
23			SAMPLE;		
24			mid_sum += 1.0/sqrt(lower + delta_x * (2.0 * i - 1.0));
25			SAMPLE;
26		}
27		SAMPLE;	
28		sum = ( end_sum + 2.0 * mid_sum ) * delta_x * 0.5;
29		SAMPLE;	
30	} while (fabs(sum - sum1) > fabs(tol * sum));
31	SAMPLE;
32}
33
34int main() {
35	trap2();
36	return 0; 
37}
