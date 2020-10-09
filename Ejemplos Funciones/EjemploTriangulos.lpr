{Desarrollar una función booleana que a partir de la medida de tres segmentos devuelva
verdadero si forman triángulo. Utilizar esta función en un programa que ingrese N triplas (cada
una consta de tres segmentos que pueden o no constituir un triángulo) calcule e imprima % de
trángulos sobre el total de datos (triplas) leídos}
program EjemploTriangulos;
Function EsTriangulo(a,b,c: real) : boolean;
begin
  EsTriangulo:= (a < b + c) and (b < a + c) and (c < a + b);
end;
var
  a,b,c: real;
  i,n,contTrian: byte;
begin
  writeln('Ingrese n'); readln(n);
  contTrian:= 0;
  for i:= 1 to n do
  begin
    writeln('Ingrese a,b y c'); readln(a,b,c);
    if EsTriangulo(a,b,c) then
       contTrian:= contTrian + 1;
  end;
  writeln('El porcentaje es = ', contTrian * 100 / n:6:2);
  readln();
end.


