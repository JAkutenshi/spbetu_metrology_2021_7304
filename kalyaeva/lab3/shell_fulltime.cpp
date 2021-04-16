# include <stdio.h>
# include <stdlib.h>
# include "Sampler.h"

 void swap(float* p, float* q) {
    float hold = *p;
    *p = *q;
    *q = hold;
 }

 void sort(float* a, int n) {
    int i;
    int j;
    int flag;
    int jump = n;

    while (jump > 0) {
        jump = jump / 2;
        do {
            flag = 1;
        for (j = 0; j < n; j++) {
            i = j + jump;
            if ((n>i) && (a[j] > a[i])) {
                swap(&a[i], &a[j]);
                flag = 0;
            }
        }
        } while(!flag);
    }
 }

 int main()
 {
    int n = 80;
    float x[80];
    int i;

    for (i = 0; i < n; ++i) {
        x[i] = (float) (rand() % 100);
    }
    
    SAMPLE;
    sort(x, n);
    SAMPLE;

    return 0;
 }