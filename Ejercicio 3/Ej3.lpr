{Dados un numero natural N, calcular y mostrar la suma de los N primeros numeros}
program Ej3;
Function SumaN(num: word): word;
var
  i: byte; {variable local}
begin
  for i:= 1 to num do
  begin
    SumaN:= SumaN + i;
  end;
end;
var
  n: word;
begin
  writeln('Ingrese un numero natural'); readln(n);
  writeln('La suma de los N primeros numeros es: ', SumaN(n));
  readln();
end.

