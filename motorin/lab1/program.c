#include "stdio.h"
#include "stdlib.h"
#include "stdbool.h"
#define RMAX 3
#define CMAX 3

float** _alloc_matr(int a, int b) {
    float** m = (float**)malloc(a * sizeof(float*));
    for (int i = 0; i < CMAX; i ++) {
        m[i] = (float*)malloc(b * sizeof(float));
    }
    return m;
}

void _free_matr(float** m, int a) {
    for (int i = 0; i < a; i ++) {
        free(m[i]);
    }
    free(m);
}

/* print out the answers */
void print_matr(float** a, float* y) {
    for (int i = 0; i < RMAX; i++) {
        for (int j = 0; j < CMAX; j ++) {
            printf("%f    ", a[i][j]);
        }
        printf(": %f\n", y[i]);
    }
}

/* get the values for n, and arrays a,y */
void get_data(float** a, float* y) {
    for (int i = 0; i < RMAX; i++) {
        printf("Equation %d\n", i);
        for (int j = 0; j < CMAX; j++) {
            printf("%d:    ", j);
            scanf("%f",    &a[i][j]);
        }
        printf("C: ");
        scanf("%f", &y[i]);
    }
    print_matr(a, y);
    printf("\n");
}

/* pascal program to calculate the determinant of a 3-by-3matrix */
float deter(float** a) {
    return a[0][0] * (a[1][1] * a[2][2] - a [2][1] * a[1][2])
    -    a[0][1]    *    (a[1][0]    *    a[2][2]    -    a    [2][0]    *    a[1][2])
    +    a[0][2]    *    (a[1][0]    *    a[2][1]    -    a    [2][0]    *    a[1][1]);
}

void setup(float** a, float** b, float* coef, float* y, int j, float det) {
    for (int i = 0; i < RMAX; i++) {
        b[i][j] = y[i];
        if (j > 0) {
            b[i][j-1] = a[i][j-1];
        }
    }
    coef[j] = deter(b) / det;
}

int solve(float** a, float* y, float* coef) {
    float** b = _alloc_matr(RMAX, CMAX);
    float det = 0;
    for (int i = 0; i < RMAX; i++) {
        for (int j = 0; j < CMAX; j++) {
            b[i][j] = a[i][j];
        }
    }
    det = deter(b);
    if (det == 0) {
        printf("ERROR: matrix is singular.");
        return 1;
    }
    setup(a, b, coef, y, 0, det);
    setup(a, b, coef, y, 1, det);
    setup(a, b, coef, y, 2, det);
    _free_matr(b, RMAX);
    return 0;
}

void write_data(float* coef) {
    for (int i = 0; i < CMAX; i++) {
        printf("%f ", coef[i]);
    }
    printf("\n");
}

int main() {
    float** a = _alloc_matr(RMAX, CMAX);
    float* y = (float*)malloc(CMAX * sizeof(float));
    float* coef = (float*)malloc(CMAX * sizeof(float));
    int error;
    char scan;
    while (1) {
        get_data(a, y);
        error = solve(a, y, coef);
        if (!error) {
            write_data(coef);
        }
        printf("More? ");
        scanf(" %c", &scan);
        if (scan != 'y') {
            break;
        }
    }
    free(y);
    free(coef);
    _free_matr(a, RMAX);
    return 0;
}
