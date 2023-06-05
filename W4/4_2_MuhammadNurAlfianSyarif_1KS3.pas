program nomor2;
uses crt;

var
  suhu: integer;
  ulang: char;

Label
  Awal;

begin
    Awal:
    clrscr;
    writeln('Program Menentukan Kondisi Air pada Suhu (Celcius) tertentu');
    writeln('===========================================================');
    writeln;
    write('Masukkan suhu air (derajat celsius): ');readln(suhu);
    if (suhu<=0) then
      begin
        writeln('kondisi air pada suhu tersebut adalah BEKU');
      end
    else
      begin
        if (suhu>=100) then
          begin
            writeln('kondisi air pada suhu tersebut adalah UAP');
          end
        else
          begin
            writeln('kondisi air pada suhu tersebut adalah CAIR');
          end;
      end;
      
    writeln;
    Write('Ingin menghitung lagi lagi? (y:Ya/t:Tidak): ');readln(ulang);
    if LowerCase(ulang) = 'y' then
      begin
        Goto awal;
      end
    else 
      begin
        write('Terimakasih')
      end;
    readln;
end.
