program Ej7;
Function Impuesto(tipo: char; impTotalSinIva: real) : real;
var          {VARIABLES LOCALES}
iva: real;
begin
  case tipo of
  'S': iva:= 0.21;
  'N': iva:= 0.31;
  else
      writeln('Error');
  end;
  Impuesto:= (iva*impTotalSinIva);
end;
var
numComercios, i1, i2, N: byte;
nombre, queTipoEs, nombreMenosFacturo: string;
tipo: char;
impSinIva, impTotalSinIva, menorFacturaion: real;
begin
  menorFacturaion:= 9999999;
  writeln('Ingrese cantidad de comercios'); readln(numComercios);
  writeln('Ingrese los ultimo N meses'); readln(N);
  for i1:= 1 to numComercios do
  begin
    impTotalSinIva:= 0;
    writeln('Ingrese el nombre del comercio: '); readln(nombre);
    writeln('Es responsable inscripto?');
    writeln('S: si');
    writeln('N: no');
    readln(tipo);
    tipo:= upcase(tipo);
    if tipo = 'S' then
    begin
       queTipoEs:= 'es responsable inscripto';
    end
       else
         queTipoEs:= 'no es responsable inscripto';
    for i2:= 1 to N do
    begin
      writeln('Ingrese su importe facturado mensual sin IVA'); readln(impSinIva);
      impTotalSinIva:= impTotalSinIva + impSinIva;
      if (impTotalSinIva < menorFacturaion) and (tipo = 'S') then
      begin
         menorFacturaion:= impTotalSinIva;
         nombreMenosFacturo:= nombre;
      end;
    end;
    writeln('El comercio ', nombre,' ', queTipoEs,', y por los ',N,' meses debe pagar: $', Impuesto(tipo, impTotalSinIva):4:2);
  end;
  writeln('El comercio responsable inscripto que menos facturo fue ', nombreMenosFacturo);
  readln();
end.

