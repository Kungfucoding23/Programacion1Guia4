{Dados un numero natural N, calcular y mostrar la suma de los N primeros numeros}
program Ej3;
Function SumaN(num: word): word;
begin
    SumaN:= SumaN + num;
end;
var
  n: word;
begin
  writeln('Ingrese un numero natural'); readln(n);
  writeln('La suma de los N primeros numeros es: ', SumaN(n));
  readln();
end.

