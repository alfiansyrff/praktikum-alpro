program coba;
uses crt;

var 
    bil: integer;

begin
    clrscr;
    write('Masukkan angka: ');read(bil);

    if (bil mod 2 = 0) then  
        begin
            writeln('Genap');
        end
    else
        begin
            writeln('Ganjil');
        end;
    readln;
end.