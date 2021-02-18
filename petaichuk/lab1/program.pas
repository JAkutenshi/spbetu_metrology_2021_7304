program linfit;
{ approximate linearization of experimental data }

const max = 80;
type ary = array[1..max] of real;

var x_array, y_array, result_array: ary;
    a, b: real;
    i, n: integer;

procedure linfit1(x,y: ary; var y_calc: ary; var a,b: real; n: integer);
{ fit a straight line (y_calc) through n sets of x and y pairs of points }

var	i: integer;
	  sum_x, sum_y, sum_xy, sum_x2,
	  sum_y2, xi, yi, sxy, sxx, syy: real;

begin 		{ linfit }
  sum_x := 0.0;
  sum_y := 0.0;
  sum_xy := 0.0;
  sum_x2 := 0.0;
  sum_y2 := 0.0;
  for i := 1 to n do
    begin
      xi := x[i];
      yi := y[i];
      sum_x := sum_x + xi;
      sum_y := sum_y + yi;
      sum_xy := sum_xy + xi*yi;
      sum_x2 := sum_x2 + xi*xi;
      sum_y2 := sum_y2 + yi*yi;
    end;
  sxx := sum_x2 - sum_x*sum_x/n;
  sxy := sum_xy - sum_x*sum_y/n;
  syy := sum_y2 - sum_y*sum_y/n;
  b := sxy/sxx;
  a := ((sum_x2*sum_y - sum_x*sum_xy)/n)/sxx;
  for i := 1 to n do
    y_calc[i] := a + b*x[i]
end;		{ LINFIT }

begin { MAIN program }
  n := max;
  randomize;
  for i := 1 to n do
    begin
      x_array[i] := i;
      y_array[i] := random(100);
    end;
  linfit1(x_array, y_array, result_array, a, b, n);
end.