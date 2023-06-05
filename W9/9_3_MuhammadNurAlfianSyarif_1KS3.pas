program kalkulator;
uses crt;

function tambah(n1,n2 : real): real;
    var
        hasilTambah: real;
    begin
        hasilTambah:= n1+n2;
        tambah:= hasilTambah;
    end;

function kurang(n1,n2 : real): real;
    var
        hasilKurang: real;
    begin
        hasilKurang:= n1-n2;
        kurang:= hasilKurang;
    end;

function kali(n1,n2 : real): real;
    var
        hasilKali: real;
    begin
        hasilKali:= n1*n2;
        kali:= hasilKali;
    end;

function bagi(n1,n2 : real): real;
    var
        hasilBagi: real;
    begin
        hasilBagi:= n1/n2;
        bagi:= hasilBagi;
    end;

Function calculate(operand: integer):real;
    var
        num1,num2,result: real;
        
    begin
        write('Masukkan bilangan pertama: ');readln(num1);
        write('Masukkan bilangan kedua: ');readln(num2);
        
        case (operand) of 
        1 : result:= tambah(num1,num2);
        2 : result:= kurang(num1,num2);
        3 : result:= kali(num1,num2);
        4 : result:= bagi(num1,num2);
        end;
        calculate:= result;
        writeln('Hasilnya ', result:0:2)
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
                writeln('5.Keluar');
                write('Pilihan Anda: ');readln(pilihOperasi);
                if pilihOperasi <> 5 then
                    calculate(pilihOperasi)
                else write('Terimakasih!');
            end;
        until pilihOperasi = 5;
    end;

begin
    clrscr;
    doCalculate;
    readln;
end.
        