{Desarrollar una funcion booleana que dado un caracter diga si es letra o no}
program Ej1;
Function esLetra(car: char): boolean;
begin
  car:= upcase(car);
  case car of
  'A'..'Z': writeln('Es letra');
  else
    writeln('No es letra');
  end;
end;
var
  car: char;
begin
  writeln('Ingrese un caracter cualquiera'); readln(car);
  esLetra(car);
  readln();
end.

