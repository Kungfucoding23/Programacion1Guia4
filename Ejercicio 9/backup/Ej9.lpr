{9. Dado un archivo que contiene en cada línea 4 números (N1, D1, N2, D2) numerador y
denominador de dos fracciones. Se pide leer los pares de fracciones y por cada uno de ellos
informe:
a) La suma como fracción.
b) El producto como fracción }
program Ej9;
Function sumaYproducto(N1, D1, N2, D2: real) : real;
begin
  writeln('La suma es: ', (N1*D2 + D1*N2)/(D1*D2):4:2);
  writeln('Su producto es: ', (N1*N2)/(D1*D2):4:2);
end;
var
  arch: text;
  N1, D1, N2, D2: real;
begin
  assign(arch, 'datos.txt'); reset(arch);
  while not eof(arch) do
  begin
    read(arch, N1, D1, N2, D2);
    sumaYproducto(N1, D1, N2, D2); {Invoca el procedimiento}
  end;
  close(arch);
  readln();
end.

