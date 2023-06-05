program nomor3cFuncParams;
uses crt;

var
    input_n : integer;
    input_kar: char;

Function tanpaTengah(kar: char; n: integer): string;
    var 
        i,j,k: integer;
    
    begin
        for i:= 1 to n do
            begin
                for j:=n downto i do
                    write('':2);
                for k:=1 to i do
                    begin
                        if (k=1) or (k=i) or (j=n) then
                            write(kar:4)
                        else 
                            write('':4);
                    end;
                writeln()
            end;
    end;
        
begin
    clrscr;
    write('Masukkan karakter: ');read(input_kar);
    write('Masukkan n: ');read(input_n);
    tanpaTengah(input_kar,input_n);
end.
