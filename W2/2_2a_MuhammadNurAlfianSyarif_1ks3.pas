program suhu;
uses crt;

var
    celcius, fahrenheit : real;

begin
    clrscr;
    writeln('MENCARI KONVERSI SUHU');
    writeln('======================');


    write('Input derajad Celcius: '); readln(celcius);

    fahrenheit:= 9/5*celcius + 32;
    // Menampilkan fahrenheit dalam 2 decimal belakang koma
    writeln('Derajad Fahrenheit: ', fahrenheit:0:2);
    readln;
end.