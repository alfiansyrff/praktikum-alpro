program detMatrix;
uses crt;

var
    mat: array [1..3, 1..3] of integer;
    i,j, result, n: integer;

begin
    clrscr;
    writeln('Menghitung Determinan Matriks');
    write('Masukkan ordo matriks');readln(n);
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
end.
    
    
    