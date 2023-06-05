program modul4;
uses crt;

var
golongan: string[4];
umur, lama: integer;
pil: char;

begin
    awal:
      clrscr;
      writeln('==PROGRAM MENENTUKAN BONUS PEGAWAI==');
      writeln('====================================');
      writeln;
      Writeln('^^Selamat datang di input bonus kantor^^');
      writeln;
      write('Masukkan golongan pegawai (staf/non): '); readln(golongan);
      if golongan='staf' then
        begin
          write('masukkan lama kerja pegawai: ');readln(lama);
          if lama>=5 then
            begin
              write('masukkan umur pegawai (tahun): ');readln(umur);
              if umur>=50 then
                begin
                  writeln('Bonus yang didapatkan Rp1.000.000,00');
                end
              else 
                begin
                  
            end
          ELSE
            begin
             writeln('Bonus yang didapatkan: Rp300.000,00');
            end;
          end
        ELSE
          begin
          writeln('Bonus yang didapatkan: Rp500.000,00');
          end;
        end
 ELSE
         begin
         write('Masukkan lama kerja pegawai (tahun): ');
         readln(lama);
          IF lama>=5 then
           begin
           write('Masukkan umur pegawai (tahun): ');
           readln(umur);
            IF umur>=50 then
             begin
             writeln('Bonus yang didapatkan: Rp400.000,00');
             end
            ELSE
             begin
             writeln('Bonus yang didapatkan: Rp250.000,00');
             end;
            end
          ELSE
           begin
           writeln('Bonus yang didapatkan: Rp0,00');
           end;
 end;
 writeln;
 writeln('^^Semangat bekerja!!!^^');
 writeln;
 writeln('====================================');
 writeln;
 write('Mau mencoba lagi?(Y/T)');
 readln(pil);
 IF((pil='Y') or (pil='y')) then
 Goto Awal;
readln;
end.
