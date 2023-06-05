program nomor_2c;
uses crt;
var 
    i,j,k,n,l : integer;
    kar: string;
begin
    clrscr;
    write('Masukkan karakter: ');read(kar);
    write('Masukkan n: ');read(n);
    for i:= 1 to n do
        begin
            for j:= 1 to n-1 do
                write('',' ');
                
            for k:=1 to i do
                write(kar,' ');
            
            for l:= 1 to n do
                write('', ' ');
            n:= n -1;
            writeln();
        end;
    readln;
end.
