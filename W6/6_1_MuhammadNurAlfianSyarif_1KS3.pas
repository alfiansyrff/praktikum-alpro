program nomor1;
uses crt;

var
    N,result : integer;

begin
    clrscr;
    write('Masukkan angka (N)= ');readln(N);
    
    result:=0;
    
    while N > 0 do
        begin
            result:= result + N;
            N:= N-1;
        end;
    writeln('Jumlah deret angka 1 hingga N= ', result);
    readln;
end.
