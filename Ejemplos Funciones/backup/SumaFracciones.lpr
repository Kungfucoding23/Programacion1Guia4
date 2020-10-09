{Desarrollar una funcion (real) que a partir de dos fracciones devuelva la suma como un real}
program SumaFracciones;
Function SumaF(n1,d1,n2,d2: shortint) : real;
begin
  SumaF:= (n1*d2 + n2*d1)/(d1*d2);
end;
var
  n1,d1,n2,d2: shortint;
begin
  writeln('Ingrese numerador y denominador de la 1ra fraccion'); readln(n1,d1);
  writeln('Ingrese numerador y denominador de la 2da fraccion'); readln(n2,d2);
  if d1*d2 <> 0 then
     writeln('La suma es: ', SumaF(n1,d1,n2,d2):8:2)
     else
       writeln('No son datos validos');
  readln();
end.

