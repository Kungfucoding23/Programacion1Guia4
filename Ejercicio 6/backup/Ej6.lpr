{Desarrollar una función que devuelva un número aleatorio en un rango A, B con A<B
ingresados por teclado. Nota: usar la función Random y Randomize}
program Ej6;
Function aleatorio (A, B: byte) : byte;
var
  aleat: byte;
begin
  repeat
    if A < B then
       aleat:= random(B+1)
       else
         writeln('A debe ser menor que B');
  until aleat > A;
  if aleat > A then
     aleatorio:= aleat;
end;
var
  A, B: byte;
begin
  randomize;
  writeln('Ingrese el rango'); readln(A, B);
  writeln('Un numero aleatorio entre A y B ingresados es: ', aleatorio(A,B));
  readln();
end.

