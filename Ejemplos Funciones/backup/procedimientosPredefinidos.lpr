{Ejemplo de procedimientos predefinidos en pasacal}
program procedimientosPredefinidos;
Uses
    crt, dos;
var
  anio, mes, dia, ds: word;
  palabra: string;
begin
  Clrscr; {limpia la pantalla, Crt}
  getDate(anio, mes, dia, ds); {devuelve la fecha del sistema 'Dos'}
  writeln(dia,'/',mes,'/',anio,'',ds);
  palabra:= 'tejido';
  writeln(palabra);
  delete(palabra, 3,2); {borra 2 caracteres de la palabra desde la posision 3}
  writeln(palabra);
  insert('cha', palabra, 3); {inserta la cadena cha a partir de la posision 3}
  writeln(palabra);
  readln();
end.

