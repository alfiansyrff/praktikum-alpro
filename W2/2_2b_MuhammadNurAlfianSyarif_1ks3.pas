program harga;
uses crt;

var 
    jml_barang: integer; 
    harga_satuan, pajak, harga_bayar: real;
    
begin
    clrscr;

    writeln('Menentukan Harga Bayar');
    writeln('======================');


    write('Jumlah barang = '); readln(jml_barang);
    write('Harga satuan Rp. = '); readln(harga_satuan);
    write('Pajak = '); readln(pajak);

    harga_bayar:= jml_barang*harga_satuan + pajak;
    writeln('Harga Bayar Rp. = ', harga_bayar:0:2);
    readln;

end.
    