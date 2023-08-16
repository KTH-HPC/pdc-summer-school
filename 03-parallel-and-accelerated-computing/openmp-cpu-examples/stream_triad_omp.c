/*
 * This program implements the operation a <- b + s * c where
 * a, b, c are arrays of doubles of length N and s is a double
 */
// Cred to Xin Li, modified by Martin karp 2023
 
#include <stdio.h>
#include <omp.h>

#define N (2048*2048)
#define M 100

double a[N];
double b[N];
double c[N];

int main() {
    int i, j;
    double s, t0,elapsed_time, bytes_transferred;

    /* Initialise b, c and s */
    s = 0.1;
    for (i = 0; i < N; i++) {
        b[i] = (double) i;
        c[i] = (double) i;
    }
    t0 = omp_get_wtime();
    /* Run benchmark loop M times */
    for (j = 0; j < M; j++) {
        #pragma omp parallel for
        for (i = 0; i < N; i++)
            a[i] = b[i] + s * c[i];
    }
    elapsed_time = omp_get_wtime()-t0;
    bytes_transferred = 3.0*8.0*((double)M)*((double)N);
    printf("Time elapsed: %f, Measured bandwidth %f GB/s \n", elapsed_time,bytes_transferred/elapsed_time*1e-9);


    return 0;
}

