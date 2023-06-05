program contoh51;
uses crt;

var
nilai: integer;
    grade: char;

begin
    clrscr;
    write('Input nilai yang Anda dapatkan 0 s.d. 100 ');readln(nilai);

    if (nilai <101) then
            grade := 'A'
    else 
        begin
            if (nilai < 80) then 
                    grade:= 'B'
            else
                if (nilai <70) then 
                        grade:= 'C'
                else
                    if (nilai < 60) then
                            grade:='D'
                    else
                        grade:= 'F'
        end;
                        
    if (grade='A') then
        writeln('Sangat baik')
    else if (grade='B') then
        writeln('Baik')
    else if (grade='C') then
        writeln('Cukup')
    else if (grade='D') then
        writeln('Kurang memuaskan')
    else if (grade='F') then
        writeln('Anda salah input nilai');

    writeln('Grade Anda ',grade);
    readln;
end.