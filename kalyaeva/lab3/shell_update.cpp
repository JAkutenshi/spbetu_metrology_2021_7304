# include <stdio.h>
# include <stdlib.h>
# include "Sampler.h"

void sort(float* a, int n) {
    int i;
    int j;
    int flag;
    int jump = n;
    float hold=0;
    SAMPLE;
    while (jump > 0) {
        SAMPLE;
        jump = jump / 2;
        SAMPLE;
        do {
            flag = 1;
        SAMPLE;
        for (j = 0; j < n; j++) {
            SAMPLE;
            i = j + jump;
            if ((n>i) && (a[j] > a[i])) {
            SAMPLE;
                hold = a[i];
                a[i] = a[j];
                a[j] = hold;
                flag = 0;
            SAMPLE;
            }
            SAMPLE;
        }
        SAMPLE;
        } while(!flag);
        SAMPLE;
    }
    SAMPLE;
 }

int main()
{
    int n = 80;
    float x[80];
    int i;

    for (i = 0; i < n; ++i) {
        x[i] = (float) (rand() % 100);
    }
    
    sort(x, n);

    return 0;
}