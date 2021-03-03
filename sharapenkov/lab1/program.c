#include <stdio.h>
#include <stdbool.h>
#include <math.h>  

double x, er, ec;
bool done;

double erf(double x) {
    const double sqrtpi = 1.7724538;
    const double tol = 1.0E-4;

    double x2, sum, sum1, term;
    int i;

    x2 = x * x;
    sum = x;
    term = x;
    i = 0;
    do {
        i = i + 1;
        sum1 = sum;
        term = 2.0 * term * x2 / (1.0 + 2.0 * i);
        sum = term + sum1;
    } while(term >= tol * sum);
    return 2.0 * sum * exp(-x2) / sqrtpi;
}

double erfc(double x) {
    const double sqrtpi = 1.7724538;
    const int terms = 12;

    double x2, u, v, sum;
    int i;
    x2 = x * x;
    v = 1.0 / (2.0 * x2);
    u = 1.0 + v * (terms + 1.0);
    for(i = terms; i; --i) {
        sum = 1.0 + i * v / u;
        u = sum;
    }
    return exp(-x2) / (x * sum * sqrtpi);
}

int main() {
    bool done = false;
    double x;
    do {
        printf("Arg? ");
        scanf("%lf", &x);
        if(x < 0.0) {
            done = true;
        } else {
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
            printf("X= %8.4lf Erf= %12.8lf Erfc= %12lf\n", x, er, ec);
        }
    } while(!done);
}
