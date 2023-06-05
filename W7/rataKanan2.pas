program Hello;
uses crt;
var 
    i,j,k,n : integer;
    kar: char;
    
begin
    clrscr;
    write('Masukkan karakter: ');read(kar);
    write('Masukkan n: ');read(n);
    for i:= 1 to n do
        begin
            for j:=n-i downto 1 do
                write(' ',' ');
            for k:= 1 to i do
                write(kar,' ');
            writeln();
        end;
    readln;
end.
