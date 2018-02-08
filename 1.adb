-- Part 1
procedure f()
	x: integer;
	procedure g()
		x: integer;
	begin
		x=17;
		h();
	end;
	procedure h()
	begin
		print(x);
	end
begin
	x =10;
	g();
end



-- Part 2
procedure f(procedure g)
begin
	g(6);
end
procedure h()
begin
	print(x*2);
end
begin
	f(h);
end;
-- This will print 12


-- Part 3
x: integer = 10;
procedure f(procedure g)
	x: integer = 15;
begin
	g();
end
procedure h()
begin
	print(x);
end
begin
	f(h);
end;
-- This will print 10




