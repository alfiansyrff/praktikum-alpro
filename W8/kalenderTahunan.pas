program coba;
uses crt;
type
    hari1minggu = (ahad, senin, selasa, rabu, kamis, jumat,sabtu);
    haribulan = 1..31;
    bulan1tahun = (januari, februari, maret, april, mei, juni, juli, agustus, september, oktober, november, desember);

var
    i, awalBulan: hari1minggu;
    j, tglMaks : haribulan;
    k: bulan1tahun;
    // x,y,
    lebar: integer;

function kalenderTahunan (tahun:word) : boolean;
    var
        isKabisat: boolean;
    begin
        if (tahun MOD 4 = 0) AND (tahun MOD 100 <> 0) OR (tahun MOD 400 = 0) Then
            isKabisat:= True
        Else isKabisat:= False;
        kalenderTahunan := isKabisat;
    End;

procedure cetakKalender;
    var
        inputTahun: word;
    begin
        write('Masukkan tahun= ');readln(inputTahun);
        write('Hari pertama awal bulan= ');readln(awalBulan);
        if kalenderTahunan(inputTahun) = True Then write('benar');
    //         begin
    //             lebar:= 7;
    //             for i:= ahad to sabtu do
    //                 write(i:lebar);
            
    //         end;
    // end;

    //     y:= 5;
    //     x:= ord(awalBulan);
    //     write(ord(awalBulan));
    //     for j:= 1 to tglMaks do
    //         begin
    //             if x=7 then
    //                 begin
    //                     x:= 0;
    //                     y:= y +1;
    //                 end;
    //                 gotoxy(lebar*x+1,y);write(j:3);
    //                 x:= x+1;
    //         end;

    //     readln;
    
    end;

begin
    clrscr;
    cetakKalender;
    readln;
end.