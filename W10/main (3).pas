program invMatrix;
uses crt;

var
    mat, result: array [1..10, 1..10] of integer;
    i,j,k,l,n : integer;

begin
    clrscr;
    writeln('Menentukan Invers Matriks');
    write('Masukkan ordo Matriks= '); readln(n);
    
    for i:=1 to n do
        begin
            for j:=1 to n do
                begin
                    write('Masukkan elemen matriks [',i,',',j,']= ');readln(mat[i,j]);
                end;
        end;
    
    //Sisi Kanan
    for j:=n+1 to n+n do
        begin
            i:=j-n;
            mat[i,j]:=1;
        end;
    for j:=n+1 to n+n do
        begin
            for i:=1 to n do
            if i<>j-n then mat[i,j]:=0;
        end;
    
    
    //Invers Matriks
    
    for i:=1 to n do
        begin
            for j:=1 to n+n do
                begin
                    if i<>j then mat[i,j]:=mat[i,j] div mat[i,i];
                end;
            for j:=1 to n+n do
                begin
                    if i=j then mat[i,j]:=1;
                end;
        end;
    //Penjumlahan baris
    for l:=1 to n do
        begin
            if i<>l then
            begin
                for j:=i+1 to n+n do
                    begin
                        mat[l,j]:=mat[l,j]-(mat[i,j]*mat[l,i]);
                    end;
            end;
        
    
    //nol disekitar Matriks
    for k:=1 to n do
        begin
            if i<>k then
            begin
                mat[k,i]:=0;
            end;
        end;
        end;
    //cetak
    writeln('Maka invers dari matrik adalah :');
    for i:=1 to n do
        begin
            for j:=n+1 to n+n do
                write (' ',mat[i,j]:4);
            writeln;
        end;
    readln;
end.

    
    
    