program nomor2;
uses crt;

var
    N, selisih: integer;

begin
    clrscr;

    write('Masukkan jumlah anak ayam: ');readln(N);
    writeln('Anak ayam turun ',N);

    selisih:= N-1;
    while N > 1 do
        begin
            writeln('Anak ayam turun ',N,',',' mati satu tinggal ', selisih);
            N:= N-1;
            selisih:= selisih-1;
            if selisih = 0 then
                writeln('Anak ayam turun ',N,',',' mati satu tinggal induknya')
        end;
    readln;
end.