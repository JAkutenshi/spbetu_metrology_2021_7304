#include <stdlib.h>
#include <time.h>
#include "Sampler.h"

void linfit1(double x[80], double y[80], double *result, double *a, double *b, int n)
{
    SAMPLE;
    double sum_x = 0.0;
    double sum_y = 0.0;
    double sum_xy = 0.0;
    double sum_x2 = 0.0;
    double sxy, sxx;
    int i;
    SAMPLE;
    for (i = 0; i < n; i++)
    {
        sum_x += x[i];
        sum_y += y[i];
        sum_xy += x[i]*y[i];
        sum_x2 += x[i]*x[i];
    }
    SAMPLE;
    sxx = sum_x2 - sum_x*sum_x/n;
    sxy = sum_xy - sum_x*sum_y/n;
    *b = sxy/sxx;
    *a = ((sum_x2*sum_y - sum_x*sum_xy)/n)/sxx;
    SAMPLE;
    for (i = 0; i < n; i++)
    {
        *(result + i) = (*a) + (*b)*x[i];
    }
    SAMPLE;
}

int main()
{
    SAMPLE;
    double x_array[80];
    double y_array[80];
    double result_array[80];
    double a, b;
    int n = 80, i;
    srand(time(NULL));
    SAMPLE;
    for (i = 0; i < n; i++)
    {
        x_array[i] = i + 1;
        y_array[i] = rand() % 100;
    }
    SAMPLE;
    linfit1(x_array, y_array, result_array, &a, &b, n);
    SAMPLE;
}