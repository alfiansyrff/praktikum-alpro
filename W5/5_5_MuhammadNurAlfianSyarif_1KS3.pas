program Nomor8;
uses crt;

const
    lulus = 'Anda lulus';

var
    nilai: integer;

begin
    clrscr;
    write('Input Nilai (1-100)= ');readln(nilai);

    case (nilai) of
        0..59 : writeln('Anda tidak lulus');
        60..74 : writeln(lulus,' dengan nilai cukup baik');
        75..89 : writeln(lulus, ' dengan nilai baik');
        90..100 : writeln(lulus, ' dengan nilai sangat baik');
        else writeln('Anda salah input nilai');
    end;
    readln; 
    
end.
