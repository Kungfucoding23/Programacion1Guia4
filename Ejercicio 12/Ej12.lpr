{12. Los dos primeros términos de la sucesión de Fibonacci valen 1, y los demás se hallan
sumando los dos anteriores: 1, 1, 2, 3, 5, 8,13, 21U
Desarrolle un programa que lea varias cotas enteras positivas, N, y para cada una de ellas
genere y muestre los términos de la sucesión hasta superar la cota dada.}
program Ej12;
Uses
    crt;
Procedure Fibonacci (max: word);
var
  a, b, c: word;
begin
  a:= 1;
  b:= 1;
  write(a,', ');
  write(b,', ');
  while (a + b) <= max do
  begin
    c:= a + b;
    write(c,', ');
    a:= b;
    b:= c;
  end;
end;
var
  max: word;
begin
  writeln('Ingrese el tope de la serie'); readln(max);
  clrScr();
  Fibonacci(max);
  readln();
end.

