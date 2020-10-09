{Desarrollar una funcion booleana que dado un caracter diga si es letra o no}
program Ej1;
Function esLetra(car: char): boolean;
begin
  car:= upcase(car);
  esLetra:= (car >= 'A') and (car <= 'Z');
end;
var
  car: char;
begin
  writeln('Ingrese un caracter cualquiera'); readln(car);
  if esLetra(car) then
     writeln('Es letra')
     else
       writeln('No es letra');
  readln();
end.

