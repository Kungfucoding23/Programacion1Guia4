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
  arch: text;
begin
  assign(arch, 'datos.txt'); reset(arch);
  while not eof(arch) do
  begin
    readln(arch, x, n);
    writeln('La potencia es: ', potencia(x,n));
  end;
  close(arch);
  readln();
end.

