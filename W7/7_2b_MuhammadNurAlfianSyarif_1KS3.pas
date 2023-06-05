program nomor2b;
uses crt;
var 
    i,j,k,n: integer;
    kar: char;
    pil: string;
begin
    clrscr;
    write('Masukkan karakter: ');readln(kar);
    write('Masukkan n: ');readln(n);
    write('Segitiga rata kanan dengan alas di? (atas/bawah): ');readln(pil);
    //Cek kondisi letak alas segitiga
    if LowerCase(pil) = 'atas' then
        begin
            for i:= 1 to n do
                begin
                    for j:=1 to i-1 do
                        write(' ',' ');
                    for k:= 1 to n do
                        write(kar, ' ');    
                    n:= n -1;
                    writeln();
                end;
        end
    else
        if LowerCase(pil) = 'bawah' then
            begin
                for i:= 1 to n do
                    begin
                        for j:=n-i downto 1 do
                            write(' ',' ');
                        for k:= 1 to i do
                            write(kar,' ');
                        writeln();
                    end;
            end
        else
            //jika input selain atas/bawah
            write('Masukkan hanya atas/bawah');
    readln;
end.
