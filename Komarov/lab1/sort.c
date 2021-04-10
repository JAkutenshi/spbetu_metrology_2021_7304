#include <math.h>
#include <stdlib.h>
#include <time.h>
#include <stdio.h>

void sort1(float* x, int n){
    float hold;
    for (int i = 0; i < n - 1; i++) {
        for (int j = i + 1; j < n; j++) {
            if (x[i] > x[j]) {
                hold = x[i];
                x[i] = x[j];
                x[j] = hold;
            }
        }
    }
}
void swap(float *a, float *b) {
    float hold = (*a);
    *a = (*b);
    *b = hold;
}
void sort2(float *x, int n){
    int no_change = 0;
    while(!no_change) {
        no_change = 1;
        for (int j=0; j < n-1; j++) {
            if (x[j] > x[j+1]) {
                swap(&x[j], &x[j+1]);
                no_change = 0;
            }
        }
    }
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

