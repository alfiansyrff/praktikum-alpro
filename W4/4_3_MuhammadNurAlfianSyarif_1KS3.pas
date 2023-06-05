program nomor3;
uses crt;
Label
 awal;
var
 hari: string[10];
 pil: char;
begin
       awal:
       clrscr;
       writeln('Program Mengecek Mata Kuliah Kampus A');
       writeln('=====================================');
       writeln;
       write('Masukkan hari yang dituju: ');readln(hari);
       if LowerCase(hari) ='senin' then
              writeln('Mata kuliah yang diberikan Algoritma dan Pemrograman I') 
       else
              begin
                     if LowerCase(hari)='selasa' then
                            writeln('Mata kuliah yang diberikan Kalkulus')
                     else
                            begin
                                   if LowerCase(hari)='rabu' then       
                                          writeln('Mata Kuliah yang diberikan Bahasa Indonesia')
                                   
                                   else
                                          begin
                                                 if LowerCase(hari)='kamis' then
                                                        writeln('Mata kuliah yang diberikan Pengantar Teknik Informatika')
                                                        
                                                 else
                                                        begin
                                                               if LowerCase(hari)='jumat' then
                                                                      writeln('Mata kuliah yang diberikan Bahasa Inggris') 
                                                               else
                                                                      begin
                                                                             if LowerCase(hari)='sabtu' then
                                                                                    writeln('Mata kuliah yang diberikan Basis Data')
                                                                                    
                                                                             else      
                                                                                    begin                                                                                        
                                                                                           if LowerCase(hari)='minggu' then
                                                                                                  writeln('SELAMAT BERLIBUR')
                                                                                                  
                                                                                    end;   
                                                                      end;
                                                        end;
                                          end;
                            end;  
              end;        

       writeln;
       writeln('^^Keep Spirit!^^');
       writeln('================');
       writeln;
       write('Mau mencoba lagi? (Y/T) ');readln(pil);
       if LowerCase(pil) = 'y' then
              Goto awal
       else
             write('Terimakasih');
       readln;
end.
