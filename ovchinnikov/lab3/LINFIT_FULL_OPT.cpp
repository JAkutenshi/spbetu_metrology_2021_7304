#include <stdlib.h> 
#include <SAMPLER.H>
 
#define SIZE 1000
 
void linfit(const float *x, const float *y, float* y_calc, float* a, float* b, int n) { 
    float sum_x, sum_y, sum_xy, sum_x2, xi, yi, sxx, sxy, _a, _b;
    sum_x = 0.0; 
    sum_y = 0.0; 
    sum_xy = 0.0;
    sum_x2 = 0.0; 
	
    int i = 0; 
    for (i = 0; i < n; i++) { 
        xi = x[i];
		yi = y[i];
		
        sum_x += xi;
        sum_y += yi;
		
        sum_xy += xi * yi; 
        sum_x2 += xi * xi; 
    }
	
    sxx = sum_x2 - sum_x * sum_x / n;
    sxy = sum_xy - sum_x * sum_y / n;
	
    _a = sxy / sxx; 
    _b = ((sum_x2 * sum_y - sum_x * sum_xy) / n) / sxx;
	
    for (i = 0; i < n; i++) { 
        y_calc[i] = _a + _b * x[i]; 
    } 
 
    *a = _a; 
    *b = _b; 
}
 
int main(int argc, char *argv[]) { 
    float x[SIZE]; 
    float y[SIZE];
    float y_calc[SIZE];
    float a, b;

    SAMPLE;  
    for (int i = 0; i < SIZE; i++) { 
        x[i] = rand(); 
        y[i] = rand(); 
    }
	
    linfit(x, y, y_calc, &a, &b, SIZE);
    SAMPLE;
	
    return 0; 
} 
