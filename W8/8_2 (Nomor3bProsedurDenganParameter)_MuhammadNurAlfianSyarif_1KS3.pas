program nomor3bProcParams;
uses crt;

var
    input_n : integer;
    input_kar: char;
    input_pil: string;
Procedure rataKanan(kar:char; n: integer; pil: string);
    var
        i,j: integer;
    begin
        if LowerCase(pil) = 'bawah'  then
            begin
                for i:=1 to n do
                    begin
                        for j:=n downto 1 do
                            if (i=n) or (j=1) or (j=i) then
                                write(kar:2)
                            else
                                write(' ',' ');
                        writeln()
                    end;
            end
        else
            begin
                if LowerCase(pil) = 'atas' then
                    begin
                        for i:=1 to n do
                            begin
                                for j:=n downto 1 do
                                    begin
                                        if (i=1)  or (j=1) or (j=(n-i)+1)  then
                                            write(kar:2)
                                        else
                                            write(' ':2);
                                    end;
                                writeln();
                            end;
                    end
                else
                    write('Masukkan hanya atas/bawah');
        
            end;                  
    
    end;
    
begin
    clrscr;
    write('Masukkan karakter: ');readln(input_kar);
    write('Masukkan n: ');readln(input_n);
    write('Segitiga rata kanan dengan alas di? (atas/bawah): ');readln(input_pil);
    rataKanan(input_kar, input_n,input_pil);
    
    readln;
end.