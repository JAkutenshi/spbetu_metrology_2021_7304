#include "math.h"
#include "sampler.h"


float x, er, ec;
unsigned char done;
float sqrtpi = 1.7724538;


float erf(float x)
  /* infinite series expansion of the Gaussian error function */


{
  float x2, sum, term;
  int i;




  float erf_result;
  x2 = x * x;
  sum = x;
  term = x;
  i = 0;
  do {
    i = i + 1;
    term = 2.0 * term * x2 / (1.0 + 2.0 * i);
    sum = term + sum;
  } while (term >= 1.0E-4 * sum);
  erf_result = 2.0 * sum * exp(-x2) / sqrtpi;
  return erf_result;
}     /* erf */


float erfc(float x)
  /* complement of error function */
{
  float u, v;
  int i;


  float erfc_result;
  v = 1.0 / (2.0 * x * x);
  u = 1.0 + v * 13;
  for( i = 12; i >= 1; i --)
  {
    u = 1.0 + i * v / u;
  }
  erfc_result = exp(-x2) / (x * u * sqrtpi);
  return erfc_result;
}       /* ercf */


int main()
{        /* main */
  SAMPLE;
  er = 0.0;
  ec = 1.0;
  for (x = 1; x <= 2.0; x++) {
    if (x < 1.5) {
      er = erf(x);
      ec = 1.0 - er;
    }
    else {
      ec = erfc(x);
      er = 1.0 - ec;
    }
  }
  SAMPLE;
  return 0;
}
