program nomor2aProcParam;
uses crt;
var
    inputKar: char;
    jmlBaris: integer;
    inputPil: string;
    
Procedure rataKiri(kar:char;n:integer;pil:string);
    var 
        i,j: integer;
        
    begin
        if LowerCase(pil) = 'bawah' then
        //looping segitiga alas di bawah
        begin
            for i:= 1 to n do
                begin
                    for j:=1 to i do
                        write(kar,' ');
                    writeln();
                end;
        end
        else 
            begin
                //looping segitiga alas di atas
                if LowerCase(pil) = 'atas' then
                    begin
    
                            for i:= 1 to n do
                                begin
                                    for j:=i to n do
                                        write(kar,' ');
                                    writeln();
                                end;
                    end
                else
                    //input tidak sesuai
                    writeln('Masukkan hanya atas/bawah');
            end;
    end;
begin
    clrscr;
    write('Masukkan karakter yang diinginkan: ');readln(inputKar);
    write('Masukkan n: ');readln(jmlBaris);
    write('Segitiga dengan alas di? (atas/bawah): ');readln(inputPil);
    rataKiri(inputKar,jmlBaris,inputPil);
    readln;
end.