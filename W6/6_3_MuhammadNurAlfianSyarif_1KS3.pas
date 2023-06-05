program nomor3;
uses crt;

var
    N,i: integer;
    rerata,jumlah: real;
    //Misal N data yang dimasukkan akan maksimal berjumlah 100
    data: array[1..100] of integer;

begin
    clrscr;
    write('Masukkan jumlah bilangan N: ');readln(N);
    jumlah:= 0;
    for i:= 1 to N do
        begin
            write('Masukkan bilangan ke-',i,' : ');readln(data[i]);
            jumlah:= jumlah + data[i];    
        end;

    rerata:= jumlah/N;
    writeln('rata-rata bilangan: ', rerata:0:2);
    readln;
end.