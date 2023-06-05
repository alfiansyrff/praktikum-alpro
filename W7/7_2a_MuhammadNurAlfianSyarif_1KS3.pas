program nomor2a;
uses crt;
var 
    i,j,n : integer;
    kar: char;
    pil: string;
begin
    clrscr;
    write('Masukkan karakter yang diinginkan: ');readln(kar);
    write('Masukkan n: ');readln(n);
    write('Segitiga dengan alas di? (atas/bawah): ');readln(pil);
    //cek kondisi segitiga
    if LowerCase(pil) = 'bawah' then
        //looping segitiga alas di bawah
        begin
            for i:= 1 to n do
                begin
                    for j:=1 to i do
                        write(kar,' ');
                    writeln();
                end;
        end
    else 
        begin
            //looping segitiga alas di atas
            if LowerCase(pil) = 'atas' then
                begin

                        for i:= 1 to n do
                            begin
                                for j:=i to n do
                                    write(kar,' ');
                                writeln();
                            end;
                end
            else
                //input tidak sesuai
                writeln('Masukkan hanya atas/bawah');
        end;
    readln;
end.

