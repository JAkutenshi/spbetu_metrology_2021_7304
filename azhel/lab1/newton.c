#include <math.h>
#include <stdio.h>
#include <stdbool.h>

void func(float x, float*fx, float*dfx) {
	const float a = 18.19;
	const float b = -23180.0;
	const float c = -0.8858;
	const float logp = -4.60517;

	*fx = a + b / x + c * log(x) - logp;
	*dfx = -b / (x * x) + c / x;
}

void newton(float* x) {
	const float tol = 1e-4;
	float fx, dfx, dx, x1;
	do {
		x1 = *x;
		func(*x, &fx, &dfx);
		if (fabs(dfx) < tol) {
			if (dfx >= 0.0) dfx = tol;
			else dfx = -tol;
		}
		dx = fx / dfx;
		*x = x1 - dx;
		printf("x= %f fx = %f dfx = %f \n", x1, fx, dfx);
	} while (!(fabs(dx) <= fabs(tol * *x)));
}

int main() {
	float x, x2;
	bool alldone;
	bool error;

	alldone = false;
	do {
		printf("First guess	(999. to exit): ");
		scanf("%f", &x);
		if (x == 999.0) {
			alldone = true;
		} else {
			newton(&x);
			printf("\nThe solution is %f \n", x);

		}
	} while (!alldone);
}