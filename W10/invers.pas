program invers;
uses crt;

var
    i,j,n: integer;
    arr, temp,kov : array [1..3, 1..3] of real;
    result: real;

begin
    clrscr;
    write('Masukkan ordo matriks');readln(n);
    if (n=2) then
        begin
        for i:=1 to n do
            begin
                for j:=1 to n do
                    begin
                        write('Masukkan ordo ke-[',i,',',j,']');readln(arr[i,j]);
                    end;
            end;
        result:= 1/(arr[1,1]*arr[2,2]-arr[1,2]*arr[2,1]);
        temp[1,1]:= arr[1,1];
        arr[1,1]:= arr[2,2];
        arr[2,2]:= temp[1,1];
        arr[1,2]:= -1*arr[1,2];
        arr[2,1]:= -1*arr[2,1];
        
        for i:= 1 to n do
            begin
                for j:=1 to n do
                    begin
                        arr[i,j]:= result*arr[i,j];
                        write(arr[i,j]:0:2, ' ');
                    end;
                writeln;
            end;
        readln;
    end
    else if (n=3) then
        begin
            for i:=1 to n do
            begin
                for j:=1 to n do
                    begin
                        write('Masukkan ordo ke-[',i,',',j,']');readln(arr[i,j]);
                    end;
            end;
        kov[1,1] := (arr[2,2] * arr[3,3]) - (arr[3,2] * arr[2,3]);  
        kov[1,2] := ((arr[2,1] * arr[3,3]) - (arr[3,1] * arr[2,3])) * -1;  
        kov[1,3] := (arr[2,1] * arr[3,2]) - (arr[3,1] * arr[2,2]);  
        kov[2,1] := ((arr[1,2] * arr[3,3]) - (arr[3,2] * arr[1,3])) * -1;  
        kov[2,2] := (arr[1,1] * arr[3,3]) - (arr[3,1] * arr[1,3]);  
        kov[2,3] := ((arr[1,1] * arr[3,2]) - (arr[3,1] * arr[1,2])) * -1;  
        kov[3,1] := (arr[1,2] * arr[2,3]) - (arr[2,2] * arr[1,3]);  
        kov[3,2] := ((arr[1,1] * arr[2,3]) - (arr[2,1] * arr[1,3])) * -1;  
        kov[3,3] := (arr[1,1] * arr[2,2]) - (arr[2,1] * arr[1,2]);  
        //Adjoin
        for i:=1 to n do
            begin
                for j:=1 to n do
                    begin
                        arr[i,j] := kov[i,j];
                    end;
            end;
        
        //Invers
        for i:= 1 to n do
            begin
                for j:=1 to n do
                    begin
                        arr[i,j]:= (1/3)*arr[i,j];
                        write(arr[i,j]:0:2, ' ');
                    end;
                writeln;
            end;
    end;
    readln;
            
end.
    
