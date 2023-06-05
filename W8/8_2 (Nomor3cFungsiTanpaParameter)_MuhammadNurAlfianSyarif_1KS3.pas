program nomor3cFuncNoParams;
uses crt;


Function tanpaTengah: string;
    var 
        i,j,k,n: integer;
        kar: char;
    begin
        write('Masukkan karakter: ');read(kar);
        write('Masukkan n: ');read(n);
        for i:= 1 to n do
            begin
                for j:=n downto i do
                    write('':2);
                for k:=1 to i do
                    begin
                        if (k=1) or (k=i) or (j=n) then
                            write(kar:4)
                        else 
                            write('':4);
                    end;
                writeln()
            end;
    end;
        
begin
    clrscr;
    tanpaTengah();
end.
