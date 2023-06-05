program perkalianMatrix;
uses crt;

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
end.
    
    
    