program decToBin;
uses crt;

function biner(n:integer):string;
begin
    if (n<=1) then write(n)
    else 
        begin
            biner(n div 2);
            write(n mod 2);
        end;
end;

var
    des : integer;
begin
    clrscr;
    write('Input= ');read(des);
    write('Output= ');read(biner(des));
    readln;
end.