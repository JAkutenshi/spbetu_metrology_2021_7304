#include <stdio.h>
#include <math.h>
#include "Sampler.h"

double x, er, ec;

double erf(double x) {
    SAMPLE;
    const double sqrtpi = 1.7724538;
    const double tol = 1.0E-4;

    double x2, sum, sum1, term;
    int i;

    x2 = x * x;
    sum = x;
    term = x;
    i = 0;
    SAMPLE;
    do {
        i = i + 1;
        sum1 = sum;
        term = 2.0 * term * x2 / (1.0 + 2.0 * i);
        sum = term + sum1;
    } while(term >= tol * sum);
    SAMPLE;
    return 2.0 * sum * exp(-x2) / sqrtpi;
}

double erfc(double x) {
    SAMPLE;
    const double sqrtpi = 1.7724538;
    const int terms = 12;

    double x2, u, v, sum;
    int i;
    x2 = x * x;
    v = 1.0 / (2.0 * x2);
    u = 1.0 + v * (terms + 1.0);
    SAMPLE;
    for(i = terms; i; --i) {
        sum = 1.0 + i * v / u;
        u = sum;
    }
    SAMPLE;
    return exp(-x2) / (x * sum * sqrtpi);
}

int main() {
    double val[2] = {1.0, 2.0};
    for (int i = 0; i < 2; i++) {
        SAMPLE;
        x = val[i];
        if(x == 0.0) {
            er = 0.0;
            ec = 1.0;
        } else {
            if(x < 1.5) {
                er = erf(x);
                ec = 1.0 - er;
            } else {
                ec = erfc(x);
                er = 1.0 - ec;
            }
        }
        SAMPLE;
    }
}