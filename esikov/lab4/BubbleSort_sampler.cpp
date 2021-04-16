#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>
#include "Sampler.h"

#define max 80

void swap(double* p, double* q)
{
	double hold = *p;
	*p = *q;
	*q = hold;
}

double* sort(double* a, int n)
{
	SAMPLE;
	double* result = (double*)malloc(sizeof(double) * n);
	SAMPLE;
	memcpy(result, a, sizeof(double) * n);
	SAMPLE;
	char no_change;
	SAMPLE;
	do
	{
		SAMPLE;
		no_change = 1;
		SAMPLE;
		for (int j = 0; SAMPLE, j < n - 1; j++)
		{
			SAMPLE;
			if (result[j] > result[j + 1])
			{
				SAMPLE;
				swap(&result[j], &result[j + 1]);
				SAMPLE;
				no_change = 0;
				SAMPLE;
			}
			SAMPLE;
		}
		SAMPLE;
	} while (!no_change);
	SAMPLE;
	return result;
}

int main()
{
	int n = max;
	double x[max];
	srand(time(NULL));
	for (int i = 0; i < n; i++)
		x[i] = rand() % 100;
	SAMPLE;
	sort(x, n);
	SAMPLE;
	return 0;
}
