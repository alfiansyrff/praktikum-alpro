program Hello;
uses crt;
var 
    i,j,n : integer;
    kar: string;
    
begin
    clrscr;
    write('Masukkan karakter: ');read(kar);
    write('Masukkan n: ');read(n);
    for i:= 1 to n do
        begin
            for j:=i to n do
                write(kar,' ');
            writeln();
        end;
    readln;
end.

