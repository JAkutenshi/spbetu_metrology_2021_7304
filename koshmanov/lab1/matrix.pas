program matr1; const
rmax = 9;
cmax = 3;
 
type
	ary = array[1..rmax] of real; arys = array[1..cmax] of real;
	ary2 = array[1..rmax, 1..cmax] of real; ary2s = array[1..cmax, 1..cmax] of real;

var
	y: ary; g: arys; x: ary2; a: ary2s;
	nrow, ncol: integer;

procedure get_data(var x: ary2; 
	var y: ary; 
	var nrow, ncol: integer); 
	var	i, j: integer;
	begin
	nrow := 5;
	ncol := 3;
	for i := 1 to nrow do begin
		x[i, 1] := 1;
	for j := 2 to ncol do
		x[i, j] := i * x[i, j - 1]; y[i] := 2 * i;
	end; end;

procedure square(x: ary2; y: ary; var a: ary2s; var g: arys; nrow, ncol: integer);
	var
	i, k, l: integer;
	begin
	for k := 1 to ncol do begin
		for l := 1 to k do begin
			a[k, l] := 0;
			for i := 1 to nrow do begin
				a[k, l] := a[k, l] + x[i, l] * x[i, k]; if k <> l then
				a[l, k] := a[k, l]; end;
		end;
		g[k] := 0;
	for i := 1 to nrow do
		g[k] := g[k] + y[i] * x[i, k];
	end;	 end;
	begin 
	get_data(x, y, nrow, ncol); square(x, y, a, g, nrow, ncol);
	end.
