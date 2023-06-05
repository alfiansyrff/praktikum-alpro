program nomor4;
uses crt;

var
    N,i,posisi: integer;
    result: real;

begin
    clrscr;
    write('Masukkan angka N: ');readln(N);
    result:= 0;
    posisi:= 1;

    if N mod 2 <> 0 then
        begin
            for i:= 1 to N do
                begin
                    if i mod 2 <> 0 then
                        begin
                        if posisi mod 2 <> 0 then
                            begin
                                result := result + 1/i;
                                if i = 1 then
                                    write(i,' ')
                                else
                                    write('+ ','1/',i,' ')
                            end
                        else
                            begin
                                result := result - 1/i;
                                write('- ','1/',i,' ')
                            end;
                                
                        posisi := posisi + 1
                    end;
                end; 
        end
    else 
        begin
            write('Masukkan angka ganjil')
        end;
    
    writeln(result:0:2);
    readln;
end.
    
            
