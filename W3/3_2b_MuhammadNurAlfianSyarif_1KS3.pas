program nomor2b;
uses crt;

const
    sd = 23;
var

    x, m, z : real;

begin
    clrscr;
    writeln('NILAI TABEL DALAM DISTRIBUSI NORMAL');
    writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');

    //Input tiap nilai
    write('Nilai rata-rata masing-masing (x) = '); read(x);
    write('Nilai rata-rata keseluruhan (m) = '); read(m);

    //Perhitungan
    z:= (x-m)/sd;

    //Cetak hasil, 2 angka desimal
    writeln('Nilai Tabel (z) = ', z:0:2);
    readln;

end.
