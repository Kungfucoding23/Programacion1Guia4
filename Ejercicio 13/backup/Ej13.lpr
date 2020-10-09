{13. Desarrollar un procedimiento que dada una Hora Inicial (horas, minutos, segundos) y unos
segundos transcurridos, devuelva la Hora Final (en horas, minutos y segundos). }
program Ej13;
uses
    crt;
Procedure Hora (hs, min, seg: real);
begin
  if seg > 60 then
  begin
     min:= seg/60;
     seg:= min - Trunc(min);
  end;
  if min > 60 then
  begin
     hs:= hs/60;
     min:= hs - Trunc(hs);
  end;
  writeln('La hora final es: ',Trunc(hs),'/',Trunc(min),'/',seg:2:2);
end;
var
  hs, min, seg: real;
begin
  writeln('Ingrese la hora minutos y segundos'); readln(hs, min, seg);
  clrScr();
  Hora(hs, min, seg);
  readln();
end.

