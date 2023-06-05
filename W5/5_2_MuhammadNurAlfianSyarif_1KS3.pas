program ujian;
uses crt;
label
    atas;
var
    nilai: real;
begin
  atas:
    clrscr;
    write('Silahkan input nilai: ');readln(nilai);
    case (round(nilai)) of
        1 : writeln('Januari');
        2 : writeln('Februari');
        3 : writeln('Maret');
        4 : writeln('April');
        5 : writeln('Mei');
        6 : writeln('Juni');
        7 : writeln('Juli');
        8 : writeln('Agu');
        9: writeln('September');
        10: writeln('Oktober');
        11: writeln('November');
        12: writeln('Desember');
        else writeln('Masukkan input yang sesuai');
        readln;
    
end.
