program nomor3a;
uses crt;

var
    m,n,i,j,k: integer;
    kar: char;
    pil: string;
begin
    clrscr;
    write('Masukkan karakter: ');readln(kar);
    write('Masukkan n: ');readln(n);
    write('Segitiga rata kiri dengan alas di? (atas/bawah): ');readln(pil);

    if LowerCase(pil) = 'bawah' then
        begin
            for i:= 1 to n do
                begin
                    for j:=1 to n do
                        if (j=1) or (j=i) or (i=n) then
                            write(kar,' ')
                        else 
                            write(' ',' ');
                    writeln();
                end;
        end
    else 
        begin
            if LowerCase(pil) = 'atas' then
                begin
                    for i:=1 to n do
                        begin
                            for j:=i to n do
                                if (j=1) or (j=i) or (j=n) or (i=1) then
                                    write(kar:2)
                                else
                                    write('':2);
                            writeln()
                        end;
                end
            else
                write('Masukkan hanya atas/bawah');
        end;
    readln;                                
end.
