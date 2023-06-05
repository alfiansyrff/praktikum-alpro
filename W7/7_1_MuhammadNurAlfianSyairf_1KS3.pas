program nomor1;
uses crt;
var
    i,j,k,n : integer;

begin
  clrscr;
  write('Masukkan nilai N: ');read(n);
  for i:=1 to n do
    begin
        if i mod 2 <> 0 then
            begin
                for j:=0 to 9 do
                    write(j, ' ');
                writeln()        
            end
        else
            begin
                for k:=9 downto 0 do 
                        write(k,' ');
                writeln()
                    
            end;
        writeln()
    end;
end.            
