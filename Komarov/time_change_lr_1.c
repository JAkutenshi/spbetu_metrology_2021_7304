	#include <math.h>
	#include <stdlib.h>
	#include <time.h>
	#include <stdio.h>
	#include "Sampler.h" 6
 void sort1(float* x, int n){
	float hold;	
	SAMPLE;	
	for (int i = 0; i < n - 1; i++) {	
	SAMPLE;	
	for (int j = i + 1; j < n; j++)	{
SAMPLE;	
	if (x[i] > x[j]) {	
	SAMPLE;	
	hold = x[i];	
	x[i] = x[j];	
	x[j] = hold;	
	SAMPLE;	
	}	
	SAMPLE;	
	}	
	SAMPLE;	
	}	
	SAMPLE;	
	}	
	void sort2(float *x, int n){	
int no_change = 0;	
	SAMPLE;	
	while(!no_change) {	
	SAMPLE;	
no_change = 1;	
	SAMPLE;	
	for (int j=0; j < n-1; j++) {	
	SAMPLE;	
  if (x[j] > x[j+1]) {	
	SAMPLE;	
	float hold = x[j];	
	x[j] = x[j + 1];	
	x[j + 1] = hold;	
no_change = 0;	
	SAMPLE;	
	}	
	SAMPLE;	
	}	
	SAMPLE;	
}	
	SAMPLE;	
	}	
	int main(){	
	float x[1000];	
	float y[1000];	
		
	srand(time(NULL));	
	for (int i=0; i <1000; i++) {	
	x[i] = 1 + rand() % 999;	
	y[i] = x[i];	
	}	

		sort1(x,1000);
		sort2(y,1000);
		return 0;
	}	

