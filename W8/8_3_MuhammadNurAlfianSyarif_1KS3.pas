program kalkulator;
uses crt;

Function calculate(operand: integer):real;
    var
        num1,num2,result: real;
        
    begin
        write('Masukkan bilangan pertama: ');readln(num1);
        write('Masukkan bilangan kedua: ');readln(num2);
        
        case (operand) of 
        1 : result:= num1+num2;
        2 : result := num1-num2;
        3 : result:= num1*num2;
        4 : result := num1/num2;
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
        