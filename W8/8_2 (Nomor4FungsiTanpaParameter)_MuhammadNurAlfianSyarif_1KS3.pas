program nomor4FuncNoParams;
uses crt;

Function segitigaPascal: string;
    var 
        i,j,k,n,x : integer;
    begin
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
    end;
begin
    clrscr;
    segitigaPascal();
    readln;
end.
                    