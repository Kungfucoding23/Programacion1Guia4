{Procedimiento que a partir de dos variables reales intercambia el contenido }
program intercambiaVariables;
var
  x,y: real;
Procedure intercambia (var a, b: real); {a y b son variables de entrada y de salida}
var
  aux: real;
begin
  aux:= a;
  a:= b;
  b:= aux;
end;
begin
  writeln('Ingrese dos valores'); readln(x,y);
  intercambia(x,y);
  readln();
end.

{no entendi este ejemplo una mierda}

