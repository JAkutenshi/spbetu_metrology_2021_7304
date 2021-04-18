#include "math.h"
#include "sampler.h"


float x, er, ec;
unsigned char done;


float erf(float x)
  /* infinite series expansion of the Gaussian error function */


{
  SAMPLE;
  static const float sqrtpi = 1.7724538;
  static const float tol = 1.0E-4;


  float x2, sum, sum1, term;
  int i;




  float erf_result;
  x2 = x * x;
  sum = x;
  term = x;
  i = 0;
  do {
    SAMPLE;
    i = i + 1;
    sum1 = sum;
    term = 2.0 * term * x2 / (1.0 + 2.0 * i);
    sum = term + sum1;
    SAMPLE;
  } while (term >= tol * sum);
  erf_result = 2.0 * sum * exp(-x2) / sqrtpi;
  SAMPLE;
  return erf_result;
}     /* erf */


float erfc(float x)
  /* complement of error function */
{
  SAMPLE;
  static const float sqrtpi = 1.7724538;
  int terms = 12;


  float x2, u, v, sum;
  int i;


  float erfc_result;
  x2 = x * x;
  v = 1.0 / (2.0 * x2);
  u = 1.0 + v * (terms + 1.0);
  for( i = terms; i >= 1; i --)
  {
    SAMPLE;
    sum = 1.0 + i * v / u;
    u = sum;
    SAMPLE;
  }
  erfc_result = exp(-x2) / (x * sum * sqrtpi);
  SAMPLE;
  return erfc_result;
}       /* ercf */


int main()
{        /* main */
  SAMPLE;
  done = 0;
  x = 2;
  do {
    SAMPLE;
    if (x < 0.0) 
    {
      SAMPLE;
      done = 1;
      SAMPLE;
    } 
    else
    {
      SAMPLE;
      if (x == 0.0)
      {
        SAMPLE;
        er = 0.0;
        ec = 1.0;
        SAMPLE;
      }
      else if (x < 1.5)
      {
        SAMPLE;
        er = erf(x);
        ec = 1.0 - er;
        SAMPLE;
      }
      else
      {
        SAMPLE;
        ec = erfc(x);
        er = 1.0 - ec;
        SAMPLE;
      }  /* if */
      x = x - 1;
      SAMPLE;
    }   /* if */
  } while (!done);
  SAMPLE;
  return 0;
}
