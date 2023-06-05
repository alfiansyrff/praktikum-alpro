program nomor_2cFuncParams;
uses crt;
var 
    input_n : integer;
    input_kar: char;
    
Function rataTengah(kar: char; n:integer):string;
    var
        i,j,k,l : integer;
    begin
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
    end;
    
begin
    clrscr;
    write('Masukkan karakter: ');read(input_kar);
    write('Masukkan n: ');read(input_n);
    rataTengah(input_kar,input_n);
    readln;
end.
