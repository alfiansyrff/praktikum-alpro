program luas_lingkaran;
uses crt;

const 
    phi = 22/7;

var
    r, Luas : real;

begin
    clrscr;

    writeln('Mencari Luas Lingkaran');
    writeln('======================');
    

    write('Input Panjang jari-jari (cm) = ');readln(r);

    Luas:= phi* r*r;
    writeln('Luas adalah (cm^2) = ', Luas:0:2);
    readln;

end.