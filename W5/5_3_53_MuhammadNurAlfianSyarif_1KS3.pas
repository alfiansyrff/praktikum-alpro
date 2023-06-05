program Konversi_nilai_Nomor4_53;
uses crt;

const
    lulus = 'Anda lulus';
var
    nilai : integer;
    grade : char;

begin
    clrscr;
    write('Input nilai yang didapatkan (0 s.d. 100) = ');readln(nilai);

    if (nilai < 60) then
            writeln('Anda tidak lulus')
    else 
        begin
            if (nilai < 74) then
                writeln(lulus, ' dengan nilai cukup')
            else
                if (nilai <90) then
                    writeln(lulus, ' dengan nilai baik')
                else
                    if (nilai < 101) then
                        writeln(lulus, ' dengan nilai sangat baik')
                    else
                        writeln('Anda salah input nilai')
        end;
    readln;
end.
        
