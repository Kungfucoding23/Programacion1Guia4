{Desarrollar una funcion para calular el factorial de un numero}
program Ej2;
Function Factorial(num: integer): integer;
begin
  if num = 0 then
     Factorial:= 1
     else
       Factorial:= num*Factorial(num-1);
end;
var
   n: integer;
begin
  writeln('Ingrese un numero'); readln(n);
  writeln(n,'! = ',Factorial(n));
  readln();
end.

