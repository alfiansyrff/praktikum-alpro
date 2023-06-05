program nomor3aFuncParams;
uses crt;

var
    input_n: integer;
    input_kar: char;
    input_pil: string;

Function rataKiri(kar:char; n:integer; pil: string): string;
    var 
        i,j : integer;
    
    begin
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
    end;
        
begin
    clrscr;
    write('Masukkan karakter: ');readln(input_kar);
    write('Masukkan n: ');readln(input_n);
    write('Segitiga rata kiri dengan alas di? (atas/bawah): ');readln(input_pil);
    rataKiri(input_kar,input_n,input_pil);
    readln;                                
end.
