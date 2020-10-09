program Ejercicio8;
Function Descuento(TipoC:char;DiaC:Integer;Monto:real):Real;
         Begin
              Case upcase(TipoC) of
                   'C':  If (diaC>15) then
                             Descuento:=monto*0.10
                         Else
                             Descuento:=0;
                   'S': If (diaC<=15) then
                              Descuento:=monto*0.05
                         Else
                             Descuento:=0;
                   'O': If (diaC=20)OR(diaC=30)OR(diaC=10) then
                             Descuento:=monto*0.05
                         Else
                             Descuento:=0;
              end;

         end;
Var
Arch:text;
Nombre:string;
tipo:char;
Dia,contDesc,descts,descto,desctc,clientes3:byte;
MontoF,Total,totaldesc,descuentoF:real;
begin
  Assign(Arch,'Ejercicio8.txt');
  Reset(Arch);
     While NOT eof(Arch) do
           Begin
     Clientes3:=0;
     Desctc:=0;
     Descts:=0;
     Descto:=0;
               Readln(Arch,nombre);
               While nombre<>'.' do
                     Begin
                          ContDesc:=0;
                          Total:=0;
                          TotalDesc:=0;
                          Readln(Arch,tipo,dia,montof);
                          While upcase(Tipo) <>'F' do
                                Begin
                                     DescuentoF:=descuento(tipo,dia,montof);
                                  If DescuentoF <> 0 then
                                     Begin
                                     Total:=Montof-DescuentoF;
                                     TotalDesc:=totaldesc+descuentoF;
                                     ContDesc:=ContDesc+1;
                                     Case upcase(tipo) of
                                          'C': DescTC:=DescTC+1;
                                          'S': DescTS:=DescTS+1;
                                          'O': DescTO:=DescTO+1;
                                     end;
                                     End
                                  Else
                                      Total:=montof;
                                  Readln(Arch,tipo,dia,montof);
                                End;
                          If ContDesc=0 then
                             Write(Nombre,' no se beneficio con ningun descuento y su monto es de ',total,' pesos');
                          If (descts<>0)AND(descto<>0)AND(desctc<>0) then
                             Clientes3:=clientes3+1;

                          Write(Nombre,' ahorro ', totaldesc,' pesos');
                          Readln(Arch,nombre);
                     End;
           end;
           Close(Arch);
           Writeln('La cantidad de clientes que obtuvieron los tres descuentos fueron: ',Clientes3);
           Readln();


end.

