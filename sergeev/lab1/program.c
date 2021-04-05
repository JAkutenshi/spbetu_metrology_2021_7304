#include <stdlib.h>
#include <time.h>
#include <math.h>


void linfit2(double x[80], double y[80], double *result, double *a, double *b, int n)
{
    double sum_x = 0.0;
    double sum_y = 0.0;
    double sum_xy = 0.0;
    double sum_x2 = 0.0;
    double sum_y2 = 0.0;
    double xi, yi, sxy, sxx, syy, correl_coef, see, sigma_b, sigma_a;
    int i;
    for (i = 0; i < n; i++)
    {
        xi = x[i];
        yi = y[i];
        sum_x += xi;
        sum_y += yi;
        sum_xy += xi*yi;
        sum_x2 += xi*xi;
        sum_y2 += yi*yi;
    }
    sxx = sum_x2 - sum_x*sum_x/n;
    sxy = sum_xy - sum_x*sum_y/n;
    syy = sum_y2 - sum_y*sum_y/n;
    *b = sxy/sxx;
    *a = ((sum_x2*sum_y - sum_x*sum_xy)/n)/sxx;
    correl_coef=sxy/sqrt(sxx*syy);
	see=sqrt((sum_y2-(*a)*sum_y-(*b)*sum_xy)/(n-2));
	sigma_b=see/sqrt(sxx);
	sigma_a=sigma_b*sqrt(sum_x2/n);
    for (i = 0; i < n; i++)
    {
        *(result + i) = (*a) + (*b)*x[i];
    }
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
    linfit2(x_array, y_array, result_array, &a, &b, n);
}
