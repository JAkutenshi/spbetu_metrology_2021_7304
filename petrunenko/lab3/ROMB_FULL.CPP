#include <stdio.h>
#include <math.h>
#include "sampler.h"

double tol = 0.0001;
int done = 0;
double sumMain,upper,lower;

double fx(double x) {
    return 1.0/x;
}

void romb(double lower,double upper){
    int p;
    int nx[16];
    for (p = 0; p < 16; p++) {
        nx[p] = 0;
    }
    double t[136];
    for (p = 0; p < 136; p++) {
        t[p] = 0.0;
    }
    int done,error;
    int pieces,nt,i,ii,n,nn,l,ntra,k,m,j;
    double delta_x,c,sum,fotom,x;
    pieces = 1;
    nx[0] = 1;
    delta_x = (upper-lower)/pieces;
    c = (fx(lower)+fx(upper))*0.5;
    t[0] = delta_x*c;
    n = 1;
    nn = 2;
    sum = c;
    do {
        n = n+1;
        fotom = 4.0;
        nx[n-1] =  nn;
        pieces = pieces*2;
        l = pieces-1;
        delta_x = (upper-lower)/pieces;
        for (ii =1; ii<=((l+1)/2); ii++) {
            i = ii*2-1;
            x = lower+i *delta_x;
            sum = sum+fx(x);
        }
        t[nn-1] = delta_x *sum;
        printf("%d%f ", pieces,t[nn]);
        ntra = nx[n-2];
        k = n-1;
        for (m = 1;m<=k;m++) {
            j = nn + m;
            nt = nx[n-1-1]+m-1;
            t[j-1] = (fotom *t[j - 2]-t[nt-1])/(fotom-1.0);
        }
        printf("%d%f\n",j-1,t[j-1]);
        if (n>4) {
            if (t[nn] < 0.0 || t[nn] > 0.0) {
                if ((abs(t[ntra + 1]-t[nn-1])<=abs(t[nn-1]*tol)) ||
                (abs(t[nn - 2]-t[j-1])<=abs(t[j-1]*tol))) {
                    done = 1;
                } else if (n>15) {
                    done = 1;
                    error = 1;
                }
            }
        }
        nn = j+1;
    }while(done != 1);
    sumMain = t[j-1];
}

int main() {
    lower = 1.0;
    upper = 9.0;
    printf("\n");
	SAMPLE ;
    romb(lower,upper);
	SAMPLE ;
    printf("\n");
    printf("Area= %f",sumMain);
    return 0;
}
