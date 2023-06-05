program nomor4;
uses crt;

var
    i,j,k,n,x: integer;

begin
    clrscr;
    write('Masukkan baris yang akan dicetak: ');read(n);
    for i:=1 to n do
        begin
            x:= 1;
            for j:=n downto i do
                write(' ':2);
            for k:=1 to i do
                begin
                    write(x:4);
                    x:= x*(i-k) div  k;
                end;
            writeln()
        end;
    readln;
end.
                    