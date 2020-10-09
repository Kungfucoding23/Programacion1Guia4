{
Se requiere calcular e imprimir las boletas de N clientes de una empresa de electricidad, por
cada cliente se conoce:
 Número de cliente
 Estado actual del medidor (en kw)
 Estado anterior del medidor
Desarrollar un programa que lea de teclado los datos de los clientes, calcule el consumo, el
importe e imprima las boletas. La boleta deberá contener el número de usuario, la cantidad de
Kw consumida y el importe. Para este último considerar básico fijo de $50 y más un monto
variable que depende del consumo, se establece una escala de valores para el precio por kw
según rangos de consumo:
 $5 si consumo <=100
 $3.5 si 100 < consumo <=250
 $2.7 si 250 < consumo
Se presentan una solución implementada a través de tres subprogramas:
• Función Precio que calcula el precio del KW según el consumo
• Procedimiento Boleta que calcula el costo de la electricidad a partir del consumo y el precio
• Procedimiento Imprime que imprime la boleta
}
program empresaElectricidad;
Function Precio (Consum: word) : real;
begin
  if Consum <= 100 then
     Precio:= 5
     else
       if Consum <= 250 then
          Precio:= 3.5
          else
            Precio:= 2.7;
end;
Procedure Boleta(EstAct, EstAnt: word; var Imp: real; var Cons: word);
begin
  Cons:= EstAct - EstAnt;      {Boleta invoca a la función Precio. En un llamado anidado, el parámetro actual puede ser
                                       variable local o parámetro formal del subprograma que realiza la invocación}
  Imp:= 50 + Cons*Precio(Cons) {cons es parametro actual de la funcion y parametro formal del procedimiento}
end;
Procedure Imprime(NroUsu: String; Imp: real; Cons: word);
begin
  writeln('Uusuario: ',NroUsu);
  writeln('Consumo: ',Cons);
  writeln('Importe: ',Imp:4:2);
end;
{como se verá mas adelante, la function Precio podría haber sido declarada localmente dentro del
procedimiento Boleta, en dicho caso sería local a Boleta y solo reconocida y utilizada en ese ámbito}
{Programa principal:}
var
  NroUsu: String[10];
  EstAct, EstAnt, Cons, N, i: word;
  Imp: real;
begin
  writeln('Ingrese cantidad de clientes'); readln(N);
  for i:= 1 to N do
  begin
    readln(NroUsu); readln(EstAct, EstAnt);
    Boleta(EstAct, EstAnt, Imp, Cons);
    Imprime(NroUsu, Imp, Cons);
  end;
  readln();
end.

