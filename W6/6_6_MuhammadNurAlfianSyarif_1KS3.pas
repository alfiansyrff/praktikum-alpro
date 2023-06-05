program nomor6;
uses crt;

var
    i,harga: integer;

begin
    clrscr;
    writeln(' TABEL HARGA FOTOKOPI ');
    writeln('|---------|---------|');
    writeln('|  LEMBAR |   HARGA |');
    writeln('|---------|---------|');
    for i:= 1 to 100 do
        begin
            harga:= i*125;
            writeln('|',i:9,'|',harga:9,'|')
        end;
    writeln('|---------|---------|');
    readln;
end.