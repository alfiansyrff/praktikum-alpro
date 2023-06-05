program nomor4FuncParams;
uses crt;

var
    input_n: integer;

Function segitigaPascal(n: integer): string;
    var 
        i,j,k,x : integer;
    begin
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
    write('Masukkan baris yang akan dicetak: ');read(input_n);
    segitigaPascal(input_n);
    readln;
end.
                    