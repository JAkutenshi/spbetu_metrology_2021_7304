1 #include <stdio.h>
2 #include <math.h>
3 #include "Sampler.h"
4 double sum = 0.0;
5 double upper = 9.0, lower = 1.0;
6 const double tol = 1.0E-6; 
7
8 void trap2() {
9	int pieces = 1;
10	double delta_x,end_sum,mid_sum = 0.0,sum1;
11	delta_x = ( upper - lower )/pieces;
12	end_sum = 1.0/sqrt(lower) + 1.0/sqrt(upper);
13	sum = end_sum * delta_x/2.0; 
14
15	do {
16		pieces = pieces * 2;
17		sum1 = sum;
18		delta_x = (upper - lower) / pieces;
19		for (int i = 1; i <= pieces/2; i++)
20		{
21			mid_sum += 1.0/sqrt(lower + delta_x * (2.0 * i - 1.0));
22		}
23		sum = ( end_sum + 2.0 * mid_sum ) * delta_x * 0.5; 
24
25	} while (fabs(sum - sum1) > fabs(tol * sum)); 
26}
27
28int main() {
29	SAMPLE;
30	trap2();
31	SAMPLE;
32	return 0; 
33}		