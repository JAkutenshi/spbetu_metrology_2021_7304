#include <STDIO.H>
#include <STDLIB.H>
#include "SAMPLER.H"

#define rmax 3
#define cmax 3
int n = rmax;

void get_data(float a[rmax][cmax], float y[cmax], int n)
{
	int i, j;
	for(i = 0; i < n; i++){
		for(j = 0; j < n; j++)
			scanf("%f", &a[i][j]);
		scanf("%f", &y[i]);
	}
}

float deter(float a[rmax][cmax])
{
	float sum;
	sum = a[0][0] * (a[1][1] * a[2][2] - a[2][1] * a[1][2])
			 - a[0][1] * (a[1][0] * a[2][2] - a[2][0] * a[1][2])
			 + a[0][2] * (a[1][0] * a[2][1] - a[2][0] * a[1][1]);
	return sum;
}

void setup(float b[rmax][cmax],float a[rmax][cmax], float y[cmax], float coef[cmax], int j, float det)
{
	int i;
	for(i = 0; i < n; i++){
		b[i][j] = y[i];
		if(j > 0)
			b[i][j - 1] = a[i][j - 1];
	}
	coef[j] = deter(b)/det;
}

void solve(float a[rmax][cmax], float y[cmax], float coef[cmax], int n, int error)
{
	SAMPLE;
	float b[rmax][cmax];
	int i,j;
	float det;
	error = 0;
	SAMPLE;
	
	for(i = 0; i < n; i++){
	SAMPLE;
		for(j = 0; j < n; j++){
		SAMPLE;
			b[i][j] = a[i][j];
		SAMPLE;
		}
	SAMPLE;
	}	
	SAMPLE;
	det = deter(a);	
	SAMPLE;
	
	if(det == 0){	
	SAMPLE;			
		error = 1;
	SAMPLE;
	}
	
	else{
	SAMPLE;
		for(j = 0; j < n; j++){
		SAMPLE;
			setup(b, a, y, coef, j, det);
		SAMPLE;
		}
	SAMPLE;
	}
	SAMPLE;
}
int main()
{
	float y[cmax], coef[cmax], a[rmax][cmax];
	int error;
	
	get_data(a, y, n);
	solve(a, y, coef, n, error);
    return 0;
}

