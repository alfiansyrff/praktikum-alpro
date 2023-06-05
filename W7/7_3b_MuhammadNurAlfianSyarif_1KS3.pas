program nomor3b;
uses crt;

var
    i,j,k,n : integer;
    kar: char;
    pil: string;

begin
    clrscr;
    write('Masukkan karakter: ');readln(kar);
    write('Masukkan n: ');readln(n);
    write('Segitiga rata kanan dengan alas di? (atas/bawah): ');readln(pil);
    
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
    readln;
end.