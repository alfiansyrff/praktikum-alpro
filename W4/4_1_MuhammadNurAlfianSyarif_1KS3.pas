program nomor1;
uses crt;

label
    Awal;

var
    golongan: string[4];
    usia, lama_kerja : integer;
    bonus: real;

begin
        Awal:
        clrscr;
        writeln('==PROGRAM MENENTUKAN BONUS PEGAWAI==');
        writeln('====================================');
        writeln;
        write('Masukkan golongan pegawai (staf/non) = ');read(golongan);
        if LowerCase(golongan) = 'staf' then
            begin
                write('Masukkan lama kerja pegawai = ');read(lama_kerja);
                write('Masukkan usia dalam tahun = ');read(usia);

                //jika lama kerja > 5 dan usia > 50, bonus 1 juta
                if (lama_kerja >= 5) and (usia >= 50) then
                        bonus:= 1000000

                //jika tidak
                else 
                        bonus  := 500000;
            end
        else 
            begin
                if LowerCase(golongan) = 'non' then
                    begin
                        write('Masukkan lama kerja pegawai = ');read(lama_kerja);
                        write('Masukkan usia dalam tahun = ');read(usia);

                        if (lama_kerja >= 5) or (usia >= 50) then
                                bonus:= 400000
                        else 
                                bonus:= 250000
                    end
                
                else
                    begin
                        writeln('Masukkan golongan pegawai dengan benar : (staf/non)');
                    end;
            end;
        writeln('Bonus anda = Rp.', bonus:0:2);
    readln;
end.
