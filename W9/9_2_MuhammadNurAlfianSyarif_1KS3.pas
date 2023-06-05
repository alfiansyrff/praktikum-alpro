program nomor2;
uses crt;

procedure jumlah(a:real; b:real; var result: real);

    begin
        result:= a+b;
        write(a:0:0,' + ',b:0:0, ' = ', result:0:0);
    end;

var
    num1,num2,total : real;
begin
    clrscr;
    write('Masukkan Bilangan pertama= ');readln(num1);
    write('Masukkan Bilangan kedua= ');readln(num2);
    jumlah(num1,num2,total);
    readln;
end.
    