{ Desarrollar una función que calcule la potencia n-ésima de un número X (X^n)}
program Ej4;
Function potencia(x, n: byte) : word;
var
  i: byte;    {variables locales}
  res: word;
begin
  res:= 1;
  for i:= 1 to n do
      res:= res*x;
  potencia:= res;
end;
var
  n, x: byte;
begin
  writeln('Ingrese un numero y su potencia'); readln(x,n);
  writeln('La potencia es: ', potencia(x,n));
  readln();
end.

