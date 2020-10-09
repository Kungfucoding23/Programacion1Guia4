{ Calcular la solución por determinantes de un sistema de dos ecuaciones lineales con dos
incógnitas (se supone compatible y determinado). Desarrollar la función que dados a,b,d,e
obtenga x}
program Ej5;
Function determinanteX(a, b, d, e, i1, i2: shortint) : real; {i1 y i2 son los terminos independientes}
var
  det, x: real;
begin
  det:= (a*e) - (d*b);
  if det <> 0 then
  begin
     x:= (((i1*e) - (i2*b))/det);
     determinanteX:= x;
  end
     else
         writeln('No existe y');
end;
Function determinanteY(a, b, d, e, i1, i2: shortint) : real; {i1 y i2 son los terminos independientes}
var
  det, y: real;
begin
  det:= (a*e) - (d*b);
  if det <> 0 then
  begin
     y:= (((a*i2) - (d*i1))/det);
     determinanteY:= y;
  end
     else
         writeln('No existe x');
end;
var
  a, b, d, e, i1, i2: shortint;
  arch: text;
Begin
  assign(arch, 'datos.txt'); reset(arch);
  while not eof(arch) do
  begin
    read(arch, a, b, i1, d, e, i2);
    writeln('El valor de x es: ', determinanteX(a, b, d, e, i1, i2):2:2);
    writeln('El valor de y es: ', determinanteY(a, b, d, e, i1, i2):2:2);
    writeln('============================================');
  end;
  close(arch);
  readln();
end.

