{Dado un archivo de texto que contiene palabras separadas por uno o más blancos
terminando con un punto. Se pide leerlo e informar la/s palabra/s más larga/s y su longitud.}
program LongitudMayor;
Type
  St20 = String[20];
Procedure Evalua(var todas: string; var max: byte);
var
  Arch: text;
  car: char;
  pal: St20;
  i: byte;
begin
  Assign(arch, 'datos.txt'); reset(arch);
  max:= 0;
  read(arch, car);
  while car <> '.' do
  begin
    if car = '' then
       read(arch, car) {si es blanco lee otro caracter}
       else
         begin {es comienzo de palabra}
           pal:= '';
           i:= 0;
               while(car <> '.') and (car <> '') do
    begin {cuenta los caracteres y arma la palabra}
      i:= i + 1;
      pal:= pal + car;
      read(arch, car);
    end;
    if i > max then {evalua si es mas larga}
    begin
      todas:= pal;
      max:= i;
    end
    else
        if i = max then {evalua si es igual}
           todas:= todas + '' + pal;
  end;
         end;
  close(arch);
end;
var
  todas: string;
  max: byte;
begin
  Evalua(todas, max);
  writeln('Estas son las palabras mas largas');
  writeln(todas);
  writeln('Tienen ',max,' caracteres');
  readln();
end.

