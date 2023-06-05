program matrix;
uses crt;

var
    lenArr, pil: integer;

//Perkalian
procedure perkalian;
var
    m1, m2, result : array [1..10, 1..10] of integer;
    kol, bar, x,y,z, temp : integer;

begin
    clrscr;
    write('Masukkan kolom matriks= ');readln(kol);
    write('Masukkan baris matriks= ');readln(bar);
    
    writeln('Matriks Pertama');
    for x:=1 to bar do
        begin
            for y:=1 to kol do
                begin
                    write('Masukkan elemen matriks, [',x,',',y,']= ');readln(m1[x,y]);
                end;
        end;
    
    writeln('Matriks Kedua');
    for x:=1 to bar do
        begin
            for y:=1 to kol do
                begin
                    write('Masukkan elemen matriks, [',x,',',y,']= ');readln(m2[x,y]);
                end;
        end;
    
    //Lakukan perkalian
    for x:=1 to bar do
        begin
            for y:= 1 to kol do 
                begin
                    temp:=0;
                for z:=1 to bar do
                    begin
                        result[x,y]:= temp + m1[x,z]*m2[z,y];
                        temp:= result[x,y];
                    end;
                end;
        end;
    
    // Tampilkan hasil

    writeln('Hasil perkalian matriks:');
    for x:=1 to bar do  
        begin
            for y:=1 to kol do
                begin
                    write(result[x,y]:4);
                end;
            writeln();
        end;
    readln;
end;

//Transpose
procedure tranpose;
var 
    mat, result: array [1..10, 1..10] of integer;
    i,j,kol, bar : integer;

begin
    clrscr;
    writeln('Menentukan Matriks Transpose');
    write('Masukkan baris Matriks= '); readln(bar);
    write('Masukkan kolom Matriks= '); readln(kol);
    for i:=1 to bar do
        begin
            for j:=1 to kol do
                begin
                    write('Masukkan elemen matriks [',i,',',j,']= ');readln(mat[i,j]);
                end;
        end;
    
    //Tukar Posisi
    writeln('Hasil Transpose Matriks:');
    for i:=1 to kol do
        begin
            for j:=1 to bar do
                begin
                    result[i,j]:= mat[j,i];
                    write(result[i,j]:4)
                end;
                writeln();
        end;
    
    readln;
end;


//determinan

procedure determinan;
var 
    mat: array [1..3, 1..3] of integer;
    i,j, result,n: integer;

begin
    clrscr;
    write('Masukkan ordo matrix= ');readln(n);
    if (n > 3) or (n<1) then write('Program ini maksimal hanya sampai ordo 3x3')
    else 
        begin
        //input matriks
        writeln('Menghitung Determinan Matriks', n,'x',n);
        for i:=1 to n do
            begin
                for j:=1 to n do
                    begin
                        write('Masukkan elemen matriks [',i,',',j,']= ');readln(mat[i,j]);
                    end;
                end;
        
        // Tampil Matriks
        writeln('Tampilan Matriks');
        for i:=1 to n do
            begin
                for j:=1 to n do
                    begin
                        write(mat[i,j]:4);
                    end;
                writeln();
            end;
            
        //Cari Determinan
        if (n = 3) then
            result:= mat[1,1]*mat[2,2]*mat[3,3]+ +mat[1,2]*mat[2,3]*mat[3,1]+mat[1,3]*mat[2,1]*mat[3,2]
            -mat[1,3]*mat[2,2]*mat[3,1]-mat[1,1]*mat[2,1]*mat[3,2]-mat[1,2]*mat[2,1]*mat[3,3]
        else if (n = 2) then
            result:= mat[1,1]*mat[2,2]-mat[1,2]*mat[2,1];

        writeln('Hasil Determinan Matriks:', result);
        readln;
    end;
end;

// Invers
procedure invers;
var
    i,j,n: integer;
    arr, temp,kov : array [1..3, 1..3] of real;
    det: real;
begin
    clrscr;
    write('Masukkan Ordo Matrix= ');readln(n);
    if (n=2) then
        begin
        for i:=1 to n do
            begin
                for j:=1 to n do
                    begin
                        write('Masukkan elemen matrix ke-[',i,',',j,']= ');readln(arr[i,j]);
                    end;
            end;
        det:= 1/(arr[1,1]*arr[2,2]-arr[1,2]*arr[2,1]);
        temp[1,1]:= arr[1,1];
        arr[1,1]:= arr[2,2];
        arr[2,2]:= temp[1,1];
        arr[1,2]:= -1*arr[1,2];
        arr[2,1]:= -1*arr[2,1];
        
        for i:= 1 to n do
            begin
                for j:=1 to n do
                    begin
                        arr[i,j]:= det*arr[i,j];
                        write(arr[i,j]:0:2, ' ');
                    end;
                writeln;
            end;
        readln;
    end
    else if (n=3) then
        begin
            for i:=1 to n do
            begin
                for j:=1 to n do
                    begin
                        write('Masukkan ordo ke-[',i,',',j,']= ');readln(arr[i,j]);
                    end;
            end;
        kov[1,1] := (arr[2,2] * arr[3,3]) - (arr[3,2] * arr[2,3]);  
        kov[1,2] := ((arr[2,1] * arr[3,3]) - (arr[3,1] * arr[2,3])) * -1;  
        kov[1,3] := (arr[2,1] * arr[3,2]) - (arr[3,1] * arr[2,2]);  
        kov[2,1] := ((arr[1,2] * arr[3,3]) - (arr[3,2] * arr[1,3])) * -1;  
        kov[2,2] := (arr[1,1] * arr[3,3]) - (arr[3,1] * arr[1,3]);  
        kov[2,3] := ((arr[1,1] * arr[3,2]) - (arr[3,1] * arr[1,2])) * -1;  
        kov[3,1] := (arr[1,2] * arr[2,3]) - (arr[2,2] * arr[1,3]);  
        kov[3,2] := ((arr[1,1] * arr[2,3]) - (arr[2,1] * arr[1,3])) * -1;  
        kov[3,3] := (arr[1,1] * arr[2,2]) - (arr[2,1] * arr[1,2]);  

        //Determinan
        det:= arr[1,1]*arr[2,2]*arr[3,3]+ +arr[1,2]*arr[2,3]*arr[3,1]+arr[1,3]*arr[2,1]*arr[3,2]
            -arr[1,3]*arr[2,2]*arr[3,1]-arr[1,1]*arr[2,1]*arr[3,2]-arr[1,2]*arr[2,1]*arr[3,3];

        //Adjoin
        for i:=1 to n do
            begin
                for j:=1 to n do
                    begin
                        arr[i,j] := kov[i,j];
                    end;
            end;
        
        //Invers
        writeln('Hasil Invers Matrix: ');
        for i:= 1 to n do
            begin
                for j:=1 to n do
                    begin
                        arr[i,j]:= (1/det)*arr[i,j];
                        write(arr[i,j]:0:2, '    ');
                    end;
                writeln;
            end;
    end;
end;

//main program
begin
    clrscr;
    repeat
        writeln('Selamat Datang di Kalkulator Matrix');
        writeln('-----------------------------------');
        writeln('----Silahkan Pilih Menu Berikut----');
        writeln('-----------------------------------');
        writeln('1. Perkalian Matrix');
        writeln('2. Transpose Matrix');
        writeln('3. Determinan Matrix');
        writeln('4. Invers Matrix');
        writeln('5. Keluar');

        write('Masukkan pilihan= ');readln(pil);
        if (pil <> 5) then
            begin
                case pil of
                    1: perkalian;
                    2: tranpose;
                    3: determinan;
                    4: invers;
                end;
            end;
        
    until (pil = 5);
    if pil = 5 then writeln('Terimakasih!');
    readln;
end.

