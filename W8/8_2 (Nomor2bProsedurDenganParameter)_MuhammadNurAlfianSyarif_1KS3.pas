program nomor2bProcParams;
uses crt;
var 
    input_n: integer;
    inputKar: char;
    inputPil: string;
Procedure segitigaKanan(kar: char; n: integer; pil: string);
    var
        i,j,k: integer;
    begin
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
    end;
        
begin
    clrscr;
    write('Masukkan karakter: ');readln(inputKar);
    write('Masukkan n: ');readln(input_n);
    write('Segitiga rata kanan dengan alas di? (atas/bawah): ');readln(inputPil);
    segitigaKanan(inputKar, input_n, inputPil);
    readln;
end.
