void swap(float* p, float* q) {
    float hold = *p;
    *p = *q;
    *q = hold;
}

float* sort(float* a, int n) {
    int i;
    int done;
    int jump = n;
    while (jump > 0) {
        jump = jump / 2;
        do {
            done = 1;
        for (int j = 0; j < n; j++) {
            i = j + jump;
            if ((n>i) && (a[j] > a[i])) {
                swap(&a[i], &a[j]);
                done = 0;
            }
        }
        } while(!done);
    }

    return a;
}

int main()
{
    int max = 80;
    
    int n = max;
    float x[max];
    
    for (int i = 0; i < n; ++i) {
        x[i] = (float) (rand() % 100);
    }
    
    sort(x, n);
}
