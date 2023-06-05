program ganjilGenap;
uses crt;

var
    angka: integer;

begin
    clrscr;
    write('angka: '); readln(angka);

    if (angka mod 2 = 0) then
        begin
            writeln('Bilangan genap');
        end
    else 
        begin
            writeln('Bilangan ganjil');
        end;
    read;

end.