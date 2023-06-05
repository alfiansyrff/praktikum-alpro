program Hello;
uses crt;
var 
    i,j,k,n,l: integer;
    kar: string;
    
begin
    clrscr;
    write('Masukkan karakter: ');read(kar);
    write('Masukkan n: ');read(n);
    for i:= 1 to n do
        begin
            for l:= 1 to n-1 do
                write(' ',' ');
                
            for j:=1 to i do
                write(kar,' ');
            
            for k:= 1 to i-1 do
                write(kar, ' ');
            
            n:= n -1;
            writeln();
        end;
    readln;
end.

