{ En un archivo de texto se registraron las compras de N titulares de tarjetas de crédito de la
siguiente forma:
- Nro. de Cliente y a continuación sus compras, no se sabe cuántas son, por cada una:
• Tipo de compra: (C=combustible, S=supermercado, O=otros, F=fin de datos)
• Día (1..31)
• Monto
El banco ofrece un descuento de:
- 5% los días 10,20 y 30 para el tipo Otros si el monto supera los $300.
- 10% para Combustible en la 2º quincena
- 15% para Supermercado en la 1º quincena.
Se pide:
a) Nombre y total abonado por cada cliente que no se benefició con ningún descuento.
b) Cuántos clientes obtuvieron descuento en los tres rubros.
c) Informar cuánto ahorró cada cliente.
Nota: En la solución debe desarrollar la función Descuento, que a partir del tipo de compra, día y
monto devuelva el correspondiente descuento. }
program Ej8;
Function Descuento(tipo: char; dia: byte; monto: real) : real;
begin
  if (tipo = 'O') and (monto > 300) and ((dia = 10) or (dia = 20) or (dia = 30)) then
     Descuento:= (monto * 0.05)
     else
       if (tipo = 'C') and (dia > 15) then
          Descuento:= (monto * 0.1)
          else
            if (tipo = 'S') and (dia < 15) then
               Descuento:= (monto * 0.15)
               else
                 Descuento:= 0;
end;
var
  arch: text;
  tipo: char;
  dia, nroCliente: byte;
  monto: real;
  nombre: string;
  total: real;
begin
  assign(arch, 'datos.txt'); reset(arch);
  while not eof(arch) do
  begin
    readln(arch, nroCliente);
    readln(arch, tipo);
    readln(arch, nombre);
    readln(arch, dia);
    readln(arch, monto);
    writeln(nombre,' tiene $', Descuento(tipo, dia, monto):8:2,' de descuento');
    total:= monto - Descuento(tipo, dia, monto);
    writeln(nombre,' debe pagar un total de $', total:8:2);
  end;
  close(arch);
  readln();
end.

