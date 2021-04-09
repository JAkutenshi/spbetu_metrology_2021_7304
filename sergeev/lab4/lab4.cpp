#include <stdlib.h>
#include <time.h>
#include <math.h>
#include "sampler.h"


void linfit2(double x[80], double y[80], double *result, double *a, double *b, int n)
{
    double sum_x = 0.0;
    double sum_y = 0.0;
    double sum_xy = 0.0;
    double sum_x2 = 0.0;
    double sxy, sxx;
    int i;
	SAMPLE;
    for (i = 0; i < n; i++) {
		SAMPLE;
        sum_x += x[i];
		SAMPLE;
        sum_y += y[i];
		SAMPLE;
        sum_xy += x[i]*y[i];
		SAMPLE;
        sum_x2 += x[i]*x[i];
		SAMPLE;
    }
	SAMPLE;
    sxx = sum_x2 - sum_x*sum_x/n;
	SAMPLE;
    sxy = sum_xy - sum_x*sum_y/n;
	SAMPLE;
    *b = sxy/sxx;
	SAMPLE;
    *a = ((sum_x2*sum_y - sum_x*sum_xy)/n)/sxx;
	SAMPLE;
    for (i = 0; i < n; i++) {
		SAMPLE;
        *(result + i) = (*a) + (*b)*x[i];
		SAMPLE;
    }
	SAMPLE;
}

int main()
{
    double x_array[80];
    double y_array[80];
    double result_array[80];
    double a, b;
    int n = 80, i;
    srand(time(NULL));
    for (i = 0; i < n; i++)
    {
        x_array[i] = i + 1;
        y_array[i] = rand() % 100;
    }
	SAMPLE;
    linfit2(x_array, y_array, result_array, &a, &b, n);
	SAMPLE;
}