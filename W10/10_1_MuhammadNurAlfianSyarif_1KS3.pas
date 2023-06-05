program nomor1;
uses crt;

type
    arr= array [0..10] of real;
var
    lenArr:integer;
    getResult: arr;
    

function inputData(): string;
var
    i,n:integer;
    result: arr;

begin
    write('Masukkan banyak bilangan= ');readln(n);
    for i:=1 to n do 
        begin
            write('Masukkan angka ke-', i,' = ');readln(result[i]);
        end;
    getResult:= result;
    lenArr:= n
end;

procedure tampilArr(n:integer);
var
    i:integer;
begin
    for i:=1 to n do
        begin
            write(getResult[i]:0:2,' ');
        end;
    readln;
end;
function terkecil(n:integer): real;
var
    i: integer;
    test,result: real;
begin
    test:= getResult[1];
    for i:=1 to n do
        begin
            if test > getResult[i] then test:= getResult[i];
        end;
    result:= test;
    writeln('Bilangan terkecil adalah= ', result:0:2);
end;

function terbesar(n:integer): real;
var
    i: integer;
    test,result: real;
begin
    test:= getResult[1];
    for i:=1 to n do
        begin
            if test < getResult[i] then test:= getResult[i];
        end;
    result:= test;
    writeln('Bilangan terbesar adalah= ', result:0:2);
end;

function avg(n:integer): real;
var
    i: integer;
    jumlah, result: real;
begin
    jumlah:=0;
    for i:=1 to n do
        jumlah := jumlah + getResult[i];
    result:= jumlah / n;
    writeln('Rata ratanya adalah= ', result:0:2);
end;

procedure hitung(operand: integer);
    begin
        case (operand) of
            1:  inputData();
            2 : tampilArr(lenArr);
            3 : terkecil(lenArr);
            4 : terbesar(lenArr);
            5 : avg(lenArr);
        end;
    end;

procedure mainProgram;
    var
        pilOperasi : integer;
    begin
        repeat
            begin
                writeln('Selamat datang di aplikasi statistik sederhana');
                writeln('Silahkan pilih menu berikut: ');
                writeln('1.Input Data');
                writeln('2.Tampilkan Semua Data');
                writeln('3.Tampilkan Data Terkecil');
                writeln('4.Tampilkan Data Terbesar');
                writeln('5.Tampilkan Rata-rata');
                writeln('6.Keluar');
                writeln();
                write('Masukkan pilihan: ');readln(pilOperasi);
                if pilOperasi <> 6 then hitung(pilOperasi)
                else if pilOperasi =6 then write('Terimakasih!');
            end;
        until pilOperasi = 6;
    end;

begin
    clrscr;
    mainProgram;
    readln;
end.