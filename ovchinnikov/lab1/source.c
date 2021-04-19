void linfit(const float* x, const float* y, float* y_calc, float* a, float* b, int n) {
    float sum_x, sum_y, sum_xy, sum_x2, sum_y2, xi, yi, sxx, syy, sxy;
    sum_x = 0.0;
	sum_y = 0.0;
	sum_xy = 0.0;
	sum_x2 = 0.0;
	sum_y2 = 0.0;
	
    for (int i = 0; i < n; i++) {
		xi = x[i];
		yi = y[i];
        sum_x = sum_x + xi;
		sum_y = sum_y + yi;
      
        sum_xy = sum_xy + xi * yi;
      
        sum_x2 = sum_x2 + xi * xi;
		sum_y2 = sum_y2 + yi * yi;
    }
	
    sxx = sum_x2 - sum_x * sum_x / n;
	sxy = sum_xy - sum_x * sum_y / n;
	syy = sum_y2 - sum_y * sum_y / n;
  
    *b = sxy / sxx;
    *a = ((sum_x2 * sum_y - sum_x * sum_xy) / n) / sxx;
	
    for (int i = 0; i < n; i++) {
		y_calc[i] = *a + *b * x[i];
    }
}
