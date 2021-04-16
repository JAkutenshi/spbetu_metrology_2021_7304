#include <stdio.h>
#include <math.h>
#include "Sampler.h"

double x, er, ec;

double erf(double x) {
    SAMPLE;
    double x2, sum, term;
    int i;

    sum = x;
    term = x;
    i = 0;
    SAMPLE;
    do {
        i = i + 1;
        term *= 2.0*x*x / (1.0 + 2.0 * i);
        sum += term;
    } while(term >= 1.0E-4 * sum);
    SAMPLE;
    return 2.0 * sum * exp(-x*x) / 1.7724538;
}

double erfc(double x) {
    SAMPLE;
    double u, v;
    int i;

    v = 1.0 / (2.0*x*x);
    u = 1.0 + v * 13.0;
    SAMPLE;
    for(i = 12; i; --i) {
        u = 1.0 + i * v / u;
    }
    SAMPLE;
    return exp(-x*x) / (x * u * 1.7724538);
}

int main() {
    double val[2] = {1.0, 2.0};
    for (int i = 0; i < 2; i++) {
        SAMPLE;
        x = val[i];
        if(x < 1.5) {
            er = erf(x);
            ec = 1.0 - er;
        } else {
            ec = erfc(x);
            er = 1.0 - ec;
        }
        SAMPLE;
    }
}