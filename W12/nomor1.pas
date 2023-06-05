program kalkulator;
uses crt;

//fungsi faktorial
function faktorial(n:integer):integer;
begin
    if (n=1) then faktorial:=1
    else faktorial:= n*faktorial(n-1);
end;

//fungsi tambah
function tambah(bil1, bil2: integer) :integer;
begin
    if (bil1 = 0) then tambah:= bil2
    else tambah:= 1+tambah(bil1-1, bil2);
end;

//fungsi bagi
function bagi(bil1,bil2 : integer):integer;
begin
    if (bil1<bil2) then bagi:=0
    else 
        begin
            if (bil1=bil2) then bagi:=1
            else bagi:= 1+bagi(bil1-bil2,bil2);
        end;
    
end;

//fungsi kali
function kali(bil1,bil2:integer):integer;
begin
    if (bil1 = 0) then kali:=0
    else kali:= bil2 + kali(bil1-1, bil2);
end;

//fungsi kurang
function kurang(bil1, bil2 : integer) :integer;
begin
    if (bil1 = bil2) then kurang:=0 
    else kurang:= 1+ kurang(bil1-1,bil2);
end;

function calculate(operand: integer):integer;
    var
        num1,num2,result, bilFak: integer;    
    begin
        if (operand < 5) then
            begin
                write('Masukkan bilangan pertama: ');readln(num1);
                write('Masukkan bilangan kedua: ');readln(num2);
            end;
        case (operand) of 
        1 : result:= tambah(num1,num2);
        2 : result:= kurang(num1,num2);
        3 : result:= kali(num1,num2);
        4 : result:= bagi(num1,num2);
        5 : begin
                write('Masukkan bilangan= ');readln(bilFak);
                result:= faktorial(bilFak);
            end;
        end;
        calculate:= result;
        writeln('Hasilnya ', result);
    end;

Procedure doCalculate;
    
    var
        pilihOperasi: integer;   
    begin
        repeat
            begin
                writeln('Selamat datang di Kalkulator Sederhana');
                writeln('Silahkan pilih menu berikut:');
                writeln('1.Penjumlahan');
                writeln('2.Pengurangah');
                writeln('3.Perkalian');
                writeln('4.Pembagian');
                writeln('5.Faktorial');
                writeln('6.Keluar');
                write('Pilihan Anda: ');readln(pilihOperasi);
                if pilihOperasi <> 6 then
                    begin
                        calculate(pilihOperasi);
                        readln;
                    end
                else write('Terimakasih!');
            end;
        until pilihOperasi = 6;
    end;

begin
    clrscr;
    doCalculate;
    readln;
end.
