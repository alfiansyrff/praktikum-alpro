program functionTanpaParams;
uses crt;
var
    n: integer;
Function nomor1: integer;
    var
        i,j,k,baris : integer;
    begin
        write('Masukkan nilai N= ');readln(baris);
        for i:=1 to baris do
        begin
            if i mod 2 <> 0 then
                begin
                    for j:=0 to 9 do
                        write(j, ' ');
                    writeln();        
                end
            else
                begin
                    for k:=9 downto 0 do 
                        write(k,' ');
                    writeln();
                    
                end;
            writeln();
        end;
    end;

begin
    clrscr;
    nomor1;
    readln;
end.