{Desarrollar una funcion (entera) que a partir de un entero N devuelva la suma de 1 hasta N}
program SumaN;
Function Suma(N: word): word;
var
  aux, i: word; {variables locales}
begin
  aux:= 0;
  for i:= 1 to N do
  begin
    aux:= aux + i;
    Suma:= aux;
  end;
end;
var
  M: word;
begin
  writeln('Ingrese un numero'); readln(M);
  writeln('La suma es: ', Suma(M));
  readln();
end.

