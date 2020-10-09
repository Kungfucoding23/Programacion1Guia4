program EjemploVocales;
Function EsVocal(letra: char): boolean;
begin
  letra:= upcase(letra);
  EsVocal:= (letra = 'A') or (letra = 'E') or (letra = 'I') or (letra = 'O') or (letra = 'U');
end;
var
  letra: char;
begin
  writeln('Ingrese una letra'); readln(letra);
  if EsVocal(letra) then
     writeln(letra, ' es una vocal')
     else
         writeln(letra, ' no es una vocal');
  readln();
end.

{letra es parametro VALOR, por lo tanto la modificacion que hace la funcion no se registra en el parametro actual}

