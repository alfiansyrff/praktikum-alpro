program transMatrix;
uses crt;

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
end.
    
    
    