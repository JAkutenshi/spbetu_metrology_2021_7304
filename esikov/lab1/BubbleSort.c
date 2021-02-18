#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

#define max 80

void swap(double* p, double* q)
{
    double hold = *p;
    *p = *q;
    *q = hold;
}

double* sort(double* a, int n)
{
    double* result = malloc(sizeof(double) * n);
    memcpy(result, a, sizeof(double) * n);
    char no_change;
    do
    {
        no_change = 1;
        for (int j = 0; j < n - 1; j++)
        {
            if (*(result + j) > *(result + j + 1))
            {
                swap(result + j, result + j + 1);
                no_change = 0;
            }
        }
    } while (!no_change);
    return result;
}

void write_arr(double* a, int n)
{
    printf("\n");
    for (int i = 0; i < n; i++)
        printf("%7.1f ", *(a + i));
    printf("\n");
}

int main()
{
    int n = max;
    double x[max];
    srand(time(NULL));
    for (int i = 0; i < n; i++)
        x[i] = rand() % 100;
    sort(x, n);
    return 0;
}
