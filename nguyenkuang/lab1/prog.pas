program simp1;

const	tol		= 1.0E-6;
var	sum,upper,lower	: real;

function fx(x: real): real;
begin
  fx:=1.0/x
end;

procedure simps(
		lower,upper,tol	: real;
		var sum		: real);
var	i		: integer;
	x,delta_x,even_sum,
	odd_sum,end_sum,
	sum1		: real;
	pieces		: integer;
begin
  pieces:=2;
  delta_x:=(upper-lower)/pieces;
  odd_sum:=fx(lower+delta_x);
  even_sum:=0.0;
  end_sum:=fx(lower)+fx(upper);
  sum:=(end_sum+4.0*odd_sum)*delta_x/3.0;
  repeat
    pieces:=pieces*2;
    sum1:=sum;
    delta_x:=(upper-lower)/pieces;
    even_sum:=even_sum+odd_sum;
    odd_sum:=0.0;
    for i:=1 to pieces div 2 do
      begin
        x:=lower+delta_x*(2.0*i-1.0);
	      odd_sum:=odd_sum+fx(x)
      end;
    sum:=(end_sum+4.0*odd_sum+2.0*even_sum)*delta_x/3.0;
  until (sum<>sum1) and (abs(sum-sum1)<=abs(tol*sum))
end;

begin
  lower:=1.0;
  upper:=9.0;
  simps(lower,upper,tol,sum);
end.
