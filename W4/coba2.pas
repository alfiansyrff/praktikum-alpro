program coba2;
uses crt;

label
    awal;

var
    hari: string[6];
    pil: char;

begin
    awal:
    clrscr;
    
    writeln('==MATA KULIAH YANG DIBERIKAN PADA BEBERAPA HARI==');
    writeln('=================================================');
    writeln;
    writeln('^^Selamat datang di perkuliahan Kampus A^^');
    writeln;
    write('Masukkan hari yang dituju: ');readln(hari);
    if hari='senin' then
        begin
            writeln('Mata kuliah yang diberikan Algoritma dan Pemrograman I');
        end;
    if hari='selasa' then
        begin
            writeln('Mata kuliah yang diberikan Kalkulus');
        end;
    if hari='rabu' then
        begin
            writeln('Mata kuliah yang diberikan Bahasa Indonesia');
        end;
    if hari='kamis' then
        begin
            writeln('Mata kuliah yang diberikan Pengantar Teknik Informatika');
        end;
    if hari='jumat' then
        begin
            writeln('Mata kuliah yang diberikan Bahasa Inggris');
        end;
    if hari='sabtu' then
        begin
            writeln('Mata kuliah yang diberikan Basis data');
        end;
    if hari='minggu' then
        begin
            writeln('Libur Boskuu, wayahe ngopi');
        end;
    
    write('Mau coba lagi? (Y/T) = ');read(pil);
    if pil = 'Y' then
        Goto awal;
    readln;
end.


