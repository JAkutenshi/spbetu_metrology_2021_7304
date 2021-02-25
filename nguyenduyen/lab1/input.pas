program simq1;		

const	rmax = 3;  
 		cmax = 3;  

type	arys = array[1..cmax] of real;
		ary2s = array[1..rmax,1..cmax] of real;

var	y,coef	: arys;
	a	: ary2s;
	n	: integer;
	yesno	: char;
	error	: boolean;

procedure get_data(var a: ary2s;
		   var y: arys;
		   var n: integer);	   
var	i,j	: integer;
begin
  n:=rmax;
  for i:=1 to n do
    begin
      for j:=1 to n do
		begin
		  read(a[i,j])
		end;
		  readln(y[i])
    end;
end;

procedure solve(a: ary2s; y: arys;
	 var coef: arys;	n: integer;
	 var error: boolean);
var	b	: ary2s;
	i,j	: integer;
	det	: real;

function deter(a: ary2s): real;
var	sum	: real;
begin		
  sum:=a[1,1]*(a[2,2]*a[3,3]-a[3,2]*a[2,3])
	-a[1,2]*(a[2,1]*a[3,3]-a[3,1]*a[2,3])
	+a[1,3]*(a[2,1]*a[3,2]-a[3,1]*a[2,2]);  
  deter:=sum
end;


procedure setup(var b: ary2s;
	     var coef: arys;
		    j: integer);
var	i	: integer;
begin
  for i:=1 to n do
    begin
      b[i,j]:=y[i];
      if j>1 then b[i,j-1]:=a[i,j-1]
    end;
  coef[j]:=deter(b)/det
end;

begin
  error:=false;
  for i:=1 to n do
    for j:=1 to n do
      b[i,j]:=a[i,j];
  det:=deter(b);
  if det=0.0 then
    begin
      error:=true;
    end
  else
    begin
      setup(b,coef,1);
      setup(b,coef,2);
      setup(b,coef,3);
    end
end;

begin
  repeat
    get_data(a,y,n);
    solve(a,y,coef,n,error);
    readln(yesno);
  until(yesno<>'Y')and(yesno<>'y')
end.
