program nomor4;
uses crt;

function faktorial(n:integer):integer;
    var
        i,result: integer;
    begin
        result:=1;
        for i:=1 to n do
            result := result*i;
        faktorial:= result;
    end;

function permutasi(r:integer):integer;
    var
        inputN, permutResult: integer;
    begin
        write('Masukkan n =');readln(inputN);
        permutResult:= faktorial(inputN) div faktorial(inputN-r);
        permutasi:= permutResult;
    end;

function kombinasi(get_r:integer):integer;
    var
        kombinResult:integer;
    begin  
        kombinResult:= permutasi(get_r) div faktorial(get_r);
        kombinasi:= kombinResult;
    end;

Label
    hitung;

var
    input_r, input_bil, hasPermut, hasKombin, pil:integer;
    lagi: char;
begin
    clrscr;
    hitung:
        writeln('1. faktorial');
        writeln('2. permutasi');
        writeln('3. kombinasi');
        write('Masukkan Pilihan (1-3):');readln(pil);
        
        case (pil) of 
            1 : begin
                    write('Masukkan bilangan = ');readln(input_bil);
                    writeln('Hasil faktorial = ', faktorial(input_bil));
                end;
            2 : begin
                    write('Masukkan r = ');readln(input_r);
                    hasPermut := permutasi(input_r);
                    writeln('Hasil permutasi = ', hasPermut);
                end;
            3 : begin
                    write('Masukkan r= ');readln(input_r);
                    hasKombin := kombinasi(input_r);
                    writeln('Hasil kombinasi = ', hasKombin);
                end;
            else 
                write('Masukkan hanya 1-3');
        end;
    write('Hitung lagi? (Y/T) ');readln(lagi);
    if LowerCase(lagi) = 'y' then GOTO hitung
    else write('Terimas Kasih!');
    readln;
end.
    