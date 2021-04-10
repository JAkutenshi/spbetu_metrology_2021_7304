program bubble_sort1-2;		
{ bubble sorting – vers.1 without procedure, vers.2 with swap-procedure }
const   max     = 1000;
type    ary     = array[1..max]of real;
var     x		: ary;
        i,n     	: integer;
procedure { bubble- } sort1(var a: ary; n: integer);
var	i,j	: integer;
	hold	: real;
begin		{ procedure sort1 }
  for i:=1 to n-1 do
    for j:=i+1 to n do
      begin
	if a[i]>a[j] then
	  begin
	    hold:=a[i];
	    a[i]:=a[j];
	    a[j]:=hold
	  end
    end		{ for }
end;		{ procedure sort1 }

procedure {bubble} sort2(var a: ary; n: integer);
var	no_change	: boolean;
	j		: integer;
procedure swap(p,q: real);
var	hold	: real;
begin
  hold:=p;
  p:=q;
  q:=hold
end;		{ swap }
begin		{ procedure sort2 }
  repeat
    no_change:=true;
    for j:=1 to n-1 do
      begin
	if a[j]>a[j+1] then
	  begin
	    swap(a[j],a[j+1]);
	    no_change:=false
	  end
	end	{ for }
  until no_change
end;	{ procedure sort2 }
