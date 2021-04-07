1 #include <stdio.h>
2 #include <math.h>
3 #include <Sampler.h> 
4
5 double sum = 0.0;
6 double upper, lower;
7 const double tol = 1.0E-6;
8 double fx(double x) {
9	return 1.0 / sqrt(x); 
10}
11

12void trap2(double lower, double upper, double tol) {
13	int pieces = 1;
14	double x,delta_x,end_sum,mid_sum,sum1;	
15	delta_x = ( upper - lower )/pieces;	
16	end_sum = fx(lower) + fx(upper);	
17	sum = end_sum * delta_x/2.0;	
18	mid_sum = 0.0;	
19	do {	
20		pieces = pieces * 2;	
21		sum1 = sum;	
22		delta_x = (upper - lower) / pieces;	
23		for (int i = 1; i <= pieces/2; i++)	
24		{	
25			x = lower + delta_x * (2.0 * i - 1.0);	
26			mid_sum = mid_sum + fx(x);	
27		}	
28		sum = ( end_sum + 2.0 * mid_sum ) * delta_x *	0.5;
29	} while (fabs(sum - sum1) > fabs(tol * sum));	
30}		
31		
32int main() {	
33	lower = 1.0;	
34	upper = 9.0;	
35	SAMPLE;	
36	trap2(lower, upper, tol);	
37	SAMPLE;	
38	return 0;
39}
	



