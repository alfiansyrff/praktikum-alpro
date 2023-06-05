program coba;
uses crt;
type
    hari1minggu = (ahad, senin, selasa, rabu, kamis, jumat,sabtu);
    haribulan = 1..31;

var
    i, awalBulan: hari1minggu;
    j, tglMaks : haribulan;
    x,y,k,lebar, bulan: integer;
    namaBulan : string;
    inputTahun: word;

function cekKabisat(tahun:word) : boolean;
    var
        isKabisat: boolean;
    begin
        if (tahun MOD 4 = 0) AND (tahun MOD 100 <> 0) OR (tahun MOD 400 = 0) Then
            isKabisat:= True
        Else isKabisat:= False;
        cekKabisat := isKabisat;
    End;

begin
    clrscr;
    write('Hari pertama awal bulan= ');readln(awalBulan);
    write('Tahun= ');readln(inputTahun);
    
    
    x:= ord(awalBulan);
    for bulan:= 1 to 12 do
        begin
            case bulan of 
                1: begin
                        tglMaks:= 31;
                        namaBulan:= 'Januari';
                    end;
                            
                2: begin
                        if (cekKabisat(inputTahun) = True) then tglMaks:= 29
                        else tglMaks:= 28;
                        namaBulan:= 'Februari';
                    end;
                            
                3: begin
                        tglMaks:= 31;
                        namaBulan:= 'Maret';
                    end;
                            
                4: begin
                        tglMaks:= 30;
                        namaBulan:= 'April';
                    end;
                            
                5: begin
                        tglMaks:= 31;
                        namaBulan:= 'Mei';
                    end;
                            
                6: begin
                        tglMaks:= 30;
                        namaBulan:= 'Juni';
                    end;
                            
                7: begin
                        tglMaks:= 31;
                        namaBulan:= 'Juli';
                    end;
                            
                8: begin
                        tglMaks:= 31;
                        namaBulan:= 'Agustus';
                    end;
                            
                9: begin
                        tglMaks:= 30;
                        namaBulan:= 'September';
                    end;
                            
                10: begin
                        tglMaks:= 31;
                        namaBulan:= 'Oktober';
                    end;
                            
                11: begin
                        tglMaks:= 30;
                        namaBulan:= 'November';
                    end;
                            
                12: begin
                        tglMaks:= 31;
                        namaBulan:= 'Desember';
                    end;
        end;                    
        writeln(namaBulan,' ', inputTahun);
        lebar:= 7;
        for i:= ahad to sabtu do
            write(i:lebar);
        writeln();
            
        y:= wherey();

        x:= ord(awalBulan);

        for j:= 1 to tglMaks do
            begin
                if x=7 then
                    begin
                        x:= 0;
                        writeln();
                        y:= wherey();
                    end;
                    gotoxy(lebar*x+1,y);
                    write(j:3);
                    x:= x+1;
            end;
            writeln();
            writeln();
            writeln();
    end;
    readln;
end.