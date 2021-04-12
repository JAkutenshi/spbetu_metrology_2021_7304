float x, er, ec;
unsigned char done;

float erf(float x)
  /* infinite series expansion of the Gaussian error function */

{
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
    i = i + 1;
    sum1 = sum;
    term = 2.0 * term * x2 / (1.0 + 2.0 * i);
    sum = term + sum1;
  } while (!(term < tol * sum));
  erf_result = 2.0 * sum * exp(-x2) / sqrtpi;
  return erf_result;
}     /* erf */

float erfc(float x)
  /* complement of error function */
{
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
    sum = 1.0 + i * v / u;
    u = sum;
  }
  erfc_result = exp(-x2) / (x * sum * sqrtpi);
  return erfc_result;
}       /* ercf */

int main()
{        /* main */
  done = 0;
  x = 2;
  do {
    if (x < 0.0) 
      done = 1;
    else
    {
      if (x == 0.0) 
      {
        er = 0.0;
        ec = 1.0;
      }
      else if (x < 1.5) 
      {
        er = erf(x);
        ec = 1.0 - er;
      }
      else
      {
        ec = erfc(x);
        er = 1.0 - ec;
      }  /* if */
      x = x - 1;
    }   /* if */
  } while (!done);
  return 0;
}
