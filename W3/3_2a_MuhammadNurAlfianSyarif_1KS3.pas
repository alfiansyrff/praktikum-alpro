program nomor2a;

uses crt;

const
    n = 5;
var
    
    x1,x2,x3,x4,x5,rata, varians, sd: real;

begin
    clrscr;

    writeln('Mencari Standar Deviasi (SD)');
    writeln('============================');

    //Input tiap nilai
    write('Data ke-1 (data) = ');read(x1);
    write('Data ke-2 (data) = ');read(x2);
    write('Data ke-3 (data) = ');read(x3);
    write('Data ke-4 (data) = ');read(x4);
    write('Data ke-5 (data) = ');read(x5);

    write('Rata - rata (rata2) = '); read(rata);

    //Perhitungan
    varians:= (sqr(x1-rata)+sqr(x2-rata)+sqr(x3-rata)+sqr(x4-rata)+sqr(x5-rata))/(n-1);
    sd:= sqrt(varians);

    //Tampilkan hasil, 2 angka desimal
    write('Standar Deviasi = ', sd:0:2);

    readln;
end.
