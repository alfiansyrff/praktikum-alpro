program nomor7;
uses crt;

var
    i,N,u17,u18,u19,u20,ulainnya: integer;
    data: array [1..100] of integer;

begin
    clrscr;
    //inisialisasi variabel
    write('Masukkan jumlah mahasiswa: ');readln(N);
    u17:= 0;
    u18:= 0;
    u19:= 0;
    u20:= 0;
    ulainnya:= 0;

    for i:= 1 to N do
        begin
            write('Masukkan usia mahasiswa ke-',i,' :');readln(data[i]);
            
            if data[i] = 17 then
                u17 := u17 + 1
            else
                begin
                    if data[i] = 18 then
                        u18:= u18 + 1
                    else 
                        begin
                            if data[i] = 19 then
                                u19:= u19 + 1
                            else 
                                begin
                                    if data[i] = 20 then
                                        u20 := u20 + 1
                                    else
                                        ulainnya := ulainnya + 1
                                end;
                        end;
                end;
        end;

    writeln('Jumlah mahasisawa berusia 17 tahun= ', u17);
    writeln('Jumlah mahasisawa berusia 18 tahun= ', u18);
    writeln('Jumlah mahasisawa berusia 19 tahun= ', u19);
    writeln('Jumlah mahasisawa berusia 20 tahun= ', u20);
    writeln('Jumlah mahasisawa berusia selain itu= ', ulainnya);

    readln;

end.
