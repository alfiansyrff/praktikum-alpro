program urutin;
uses crt;

type 
    arr = array [1..100] of integer;

procedure selectionSort(var larik: arr; n:integer);
var
    i,j,max,temp : integer;


begin
    for i:= 1 to n-1 do
        begin
            max := i;
            for j:= i+1 to n do 
                if (larik[max] < larik[j]) then max := j;
                
            temp := larik[i];
            larik[i] := larik[max];
            larik[max] := temp;
        end;
    
end;

procedure bubleSort(var larik:arr; n:integer);
var
    i,j,temp : integer;

begin
    for i:=1 to n-1 do
        begin
            for j:=n downto i+1 do
                begin
                    if larik[j] > larik[j-1] then
                        begin
                            temp := larik[j];
                            larik[j] := larik[j-1];
                            larik[j-1] := temp;
                        end;
                end;
        end;
end;
            
Procedure InsertionSort(var data:arr; n:integer);
var
    i,j,key:integer;
begin
    for i:=2 to n do
    begin
        key:=data[i];
        j:=i-1;
        while (j>0)and(data[j]<key) do 
        begin
            data[j+1]:=data[j];
            j:=j-1; 
        end;
        data[j+1]:=key;
    end;
End;


var
    data : arr;
    n,i : integer;
begin
    n:=5;
    data[1]:=5;
    data[2]:=8;
    data[3]:=6;
    data[4]:=9;
    data[5]:=1;
    Insertionsort(data,n);
    bubleSort(data,n);
    selectionSort(data,n);
    for i:=1 to n do writeln(data[i]);
end.