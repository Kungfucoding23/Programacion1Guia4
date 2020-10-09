{11. Dada la ecuación de una parábola y=ax2
 + bx +c mediante un menú de opciones iterativo
permita:
a) Encontrar el eje de simetría, sabiendo que x1=-b/(2.a) y Si presenta un mínimo ó un
máximo en f(x1).
b) Informar hacia dónde es abierta la parábola.
c) Calcular y mostrar las raíces, informar en caso que no existan. Para ello debe analizar si el
discriminante, D=b2
 – 4ac, es mayor, menor ó igual a cero )
d) Dado un conjunto de valores de x informar su imagen.
Usar procedimientos y/o funciones según corresponda}
program Ej11;
Uses
    Crt;
Procedure ejeDeSimetria(a, b, c: integer);
var
  x, fx: real;
begin
  x:= -b/(2*a);
  fx:= a*sqr(x) + b*x + c;
  writeln('El eje de simetria es: ',fx:4:2);
  if a > 0 then
     writeln('Tiene un minimo en ', fx:4:2,'. La parabola abre hacia arriba')
     else
       writeln('Tiene un maximo en ', fx:4:2,'. La parabola abre hacia abajo');
end;
Procedure raices(a, b, c: integer);
var
  disc, raiz1, raiz2: real;
begin
  disc:= (sqr(b) - 4*a*c);
  if disc >= 0 then
  begin
     raiz1:= (-b + sqrt(disc))/2*a;
     raiz2:= (-b - sqrt(disc))/2*a;
     writeln('Las raices son: ', raiz1:4:2,' y ', raiz2:4:2);
  end
     else
         writeln('No tiene raices');
end;
Function Imagen(x, a, b, c: integer) : real;
Begin
  Imagen:= a*sqr(x) + b*x + c;
end;
var
  x, a, b, c: integer;
  opcion: char;
begin
  repeat
     clrScr();
     writeln('Que desea hacer?');
     writeln('a) Hallar el eje de simetria y si presenta un maximo o minimo en f(x1)');
     writeln('b) Hallar las raices');
     writeln('c) Hallar la imagen');
     writeln('s) Salir');
     readln(opcion);
     opcion:= upcase(opcion);
     writeln('Ingrese los valores de a, b y c'); readln(a, b, c);
     clrScr();
     if opcion = 'A' then
     begin
        clrScr();
        writeln('Para a = ',a,' b = ',b,' c = ',c);
        ejeDeSimetria(a, b, c);
     end
        else
            if opcion = 'B' then
            begin
               clrScr();
               writeln('Para a = ',a,' b = ',b,' c = ',c);
               raices(a, b, c);
            end
               else
                   if opcion = 'C' then
                   begin
                      clrScr();
                      writeln('Ingrese el valor de x'); readln(x);
                      clrScr();
                      writeln('Para y = ',a,'xx + ',b,'x + ',c,' con x = ', x);
                      writeln('La imagen es: ', Imagen(x, a, b, c):4:2);
                   end
                      else
                          writeln('Saliendo...');
  readln();
  until opcion = 'S';
end.










