{Leer dos valores reales, mostrar su suma y su producto, utilizar :
5_a - Procedimiento que a partir de dos valores reales imprima su suma y su producto
5_b - Procedimiento que a partir de dos valores reales devuelva su suma y su producto, el
 programa invocante imprime los resultados}
program sumaYproducto;
var            {es importante que esto venga antes de definir el procedimiento}
  x, y: real;
Procedure CalculaImprime(w,z: real); {define el prodedimiento, w y z son parametros formales de entrada}
begin
  writeln('La suma es = ', (w + z):4:2);
  writeln('El producto es = ', (w*z):4:2);
end;
begin
  writeln('Ingrese dos numeros'); readln(x,y);
  CalculaImprime(x,y); {invoca el procedimiento, x e y parametros actuales}
  readln();
end.
 {Para la solución del inciso 5_b es necesario que el procedimiento comunique resultados a través
de parámetros, la comunicación debe ser Bidirecciona}
