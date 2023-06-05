program nomor_2cFuncNoParams;
uses crt;
var 
    input_n : integer;
    input_kar: char;
    
Function rataTengah: string;
    var
        i,j,k,l,n : integer;
        kar: char;
    begin
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
    end;
    
begin
    clrscr;
    rataTengah();
    readln;
end.
