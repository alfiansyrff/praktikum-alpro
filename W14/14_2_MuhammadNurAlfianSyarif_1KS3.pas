program penugasan11;
uses crt;

type
    data_mahasiswa = record
    nim : string[10];
    nama : string [20];
    kelas : string[4];
    nilai_alpro : real;
    end;

    arr = array [1..100] of data_mahasiswa;    

var
    banyakData : integer;
    recordData : arr;//Misal Paling banyak 40 orang 
    resultSearch : real;
    
//input data
procedure inputData;
var
    i: integer;

begin
    write('Masukkan banyak mahasiswa= ');readln(banyakData); 
    for i:=1 to banyakData do
        begin
            writeln('Masukkan data mahasiswa ke- ', i);
            with recordData[i] do
                begin
                    write('Masukkan NIM= ');readln(nim);
                    write('Masukkan nama= ');readln(nama);
                    write('Masukkan kelas= ');readln(kelas);
                    write('Masukkan nilai alpro= ');readln(nilai_alpro);
                end;
        end;
end;

//cetak data
procedure cetakData(var larik : arr);
var
    i:integer;
    
begin
    writeln('Data nilai ujian alpro yang didapat= ');
    for i:=1 to banyakData do
        begin
            with larik[i] do
                begin
                    write('NIM mahasiswa-',i,'= ', nim,', ');
                    write('Nama mahasiswa-',i,'= ', nama,', ');
                    write('Kelas mahasiswa-',i,'= ', kelas,', ');
                    write('Nilai alpro mahasiswa-',i,'= ', nilai_alpro:0:1);
                end;
            writeln;
        end;
end;

//Nilai Max
function getMaxValue: real;
var
    i:integer;
    temp:real;
begin
    temp := recordData[1].nilai_alpro;
    for i:=1 to banyakData do
        begin
            if (recordData[i].nilai_alpro > temp) then
                temp:= recordData[i].nilai_alpro;
        end;
    getMaxValue := temp;
    writeln('Nilai alpro terbesar adalah= ', getMaxValue:0:1);
end;

//Nilai Min
function getMinValue: real;
var
    i: integer;
    temp: real;
begin
    temp:= recordData[1].nilai_alpro;
    for i:=1 to banyakData do
        begin
            if (recordData[i].nilai_alpro < temp) then
                temp:= recordData[i].nilai_alpro;
        end;
    getMinValue := temp;
    writeln('Nilai alpro terkecil adalah= ', getMinValue:0:1);
end;

//Hitung rata-rata
function average: real;
var
    i: integer;
    sumValue, result: real;
begin
    sumValue:=0;
    for i:=1 to banyakData do
            sumValue:= sumValue + recordData[i].nilai_alpro;
    result:= sumValue / banyakData;
    writeln('Rata-rata= ', result:0:1);
    average:= result;
end;

//cari nilai mhs
function cariNilai(findName:string): real;
var
    i: integer;
begin
    i:=1;
    while(i<5) and (LowerCase(recordData[i].nama) <> LowerCase(findName)) do i:=i+1;
    if (LowerCase(recordData[i].nama) = LowerCase(findName)) then cariNilai := recordData[i].nilai_alpro
    else cariNilai := 0;
    resultSearch := cariNilai;
end;

//Urutkan Berdasarkan nama buble sort                           
procedure urutNama(var larik : arr; n:integer);
var
    i,j : integer;
    temp : data_mahasiswa;
begin 
    for i:=1 to n-1 do 
        begin
            for j:=n downto i+1 do 
                begin
                    if larik[j].nama < larik[j-1].nama then 
                        begin
                            temp := larik[j];
                            larik[j] :=larik[j-1];
                            larik[j-1] := temp;
                        end;
                end;
        end;
    writeln('Data Telah Diurutkan Berdasarkan nama');
end;

//Urut Berdasarkan Nilai secara naik dengan selection sort
procedure urutNilai(var larik : arr; n:integer);
var
    i,j,max : integer;
    temp : data_mahasiswa;
begin 
    for i:=1 to n-1 do 
        begin
            max := i;
            for j:=i+1 to n do
                    if larik[max].nilai_alpro < larik[j].nilai_alpro then max := j;
            //Tukar            
            temp := larik[j];
            larik[j] :=larik[max];
            larik[max] := temp;
            
        end;
    writeln('Data Telah Diurutkan Berdasarkan Nilai Alpro');
end;


//cek jika data ada
function cek:boolean;
begin
    if (recordData[1].nama) = '' then cek := false
    else cek:=true;
end;



//lakukan perhitungan sesuai input
procedure calculate(getPil:integer);
var
    namaMhs : string;
begin
    case (getPil) of 
    1: inputData;
    2: begin
        if (cek = true) then cetakData(recordData)
        else writeln('Harap Masukkan data terlebih dahulu');
        end;
    3: begin
        if (cek = true) then getMaxValue
        else writeln('Harap Masukkan data terlebih dahulu');
        end;
    4: begin
        if (cek = true) then getMinValue
        else writeln('Harap Masukkan data terlebih dahulu');
        end;
    5: begin
        if (cek = true) then average
        else writeln('Harap Masukkan data terlebih dahulu');
        end;
    6: begin
        if (cek = true) then 
            begin
                write('Masukkan nama mahasiswa= ');readln(namaMhs);
                if (cariNilai(namaMhs) <> 0) then write('Data Ditemukan! Nilai Alpro',namaMhs,' = ',resultSearch:0:2)
                else write('Data Tidak Ditemukan');
            end
        else writeln('Harap Masukkan data terlebih dahulu');
        end;
    7 : begin
        if (cek = true) then urutNama(recordData,banyakData)
        else writeln('Harap Masukkan data terlebih dahulu');
        end;
    8 : begin
        if (cek = true) then urutNilai(recordData,banyakData)
        else writeln('Harap Masukkan data terlebih dahulu');
        end;
    end;
    readln;
end;
//masukkan input dan pilih operasi
procedure pilihOperasi;
var
    pil:integer;
begin
    repeat
        begin
            writeln('Selamat Datang di Program Entri Mahasiswa');
            writeln('1.Input Data');
            writeln('2.Tampilkan Data');
            writeln('3.Nilai Alpro Terbesar');
            writeln('4.Nilai Alpro Terkecil');
            writeln('5.Rata-rata Nilai Alpro');
            writeln('6.Cari Nilai Mahasiswa');
            writeln('7.Urutkan Berdasarkan Nama');
            writeln('8.Urutkan Berdasarkan Nilai Alpro');
            writeln('9.Keluar');
            writeln;
            write('Silahkan Masukkan Pilihan Anda= ');readln(pil);
            if (pil <>9) then
                calculate(pil)
            else write('Terimakasih!');
        end;
    until pil=9;
end;


//main program
begin
    clrscr;
    pilihOperasi;
end.