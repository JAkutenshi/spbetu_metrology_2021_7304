#include <stdio.h>
#include <math.h>
#include "sampler.h"

double tol = 0.0001;
int done = 0;
double sumMain,upper,lower;

void romb(double lower,double upper){
	SAMPLE ;
    int p;
    int nx[16] = {0};
    double t[136]= {0};
    int done,error;
    int pieces,ii,n,nn,l,ntra,k,m,j;
    double delta_x,c,sum,fotom,x;
    pieces = 1;
    nx[0] = 1;
    delta_x = (upper-lower)/pieces;
    c = ((1.0/lower)+(1.0/upper))*0.5;
    t[0] = delta_x*c;
    n = 1;
    nn = 2;
    sum = c;
    fotom = 4.0; 
    do {
		SAMPLE ;
        n = n+1;
		SAMPLE ;
        nx[n-1] =  nn;
		SAMPLE ;
        pieces = pieces*2;
		SAMPLE ;
        l = pieces-1;
		SAMPLE ;
        delta_x = (upper-lower)/pieces;
        SAMPLE ;
        for (ii =1; ii<=((l+1)/2); ii++) {
			SAMPLE ;
            x = lower+(ii*2-1) *delta_x;
			SAMPLE ;
            sum = sum+(1.0/x);
			SAMPLE ;
        }
		SAMPLE ;
        t[nn-1] = delta_x *sum;
		SAMPLE ;
        printf("%d%f ", pieces,t[nn]);
        ntra = nx[n-2];
		SAMPLE ;
        k = n-1;
        SAMPLE ;
        for (m = 1;m<=k;m++) {
			SAMPLE ;
            j = nn + m;
			SAMPLE ;
            t[j-1] = (fotom *t[j - 2]-t[(nx[n-1-1]+m-1)-1])/(fotom-1.0);
			SAMPLE ;
        }
        printf("%d%f\n",j-1,t[j-1]);
        SAMPLE ;
        if (n>4) {

            if (t[nn] < 0.0 || t[nn] > 0.0) {
				SAMPLE ;
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
        SAMPLE ;
    }while(done != 1);
    sumMain = t[j-1];
    SAMPLE ;
}

int main() {
    lower = 1.0;
    upper = 9.0;
    printf("\n");
    romb(lower,upper);
    printf("\n");
    printf("Area= %f",sumMain);
    return 0;
}