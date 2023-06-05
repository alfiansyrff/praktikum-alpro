program pencarian;
uses crt;

Type Larik = array [1..100] of integer;

Function SequentialSearch(A:Larik; n:integer; x:integer): integer;
begin 
    n:= n-1;
    if (n > 0) then 
        begin 
            if (A[n] = x) then 
                SequentialSearch:= n
            else
                SequentialSearch:= SequentialSearch(A, n, x);
        end
    else
        SequentialSearch:= 0;
end;

Function Sequentialsearch2(A:Larik; N:integer;X:integer): integer;
Var
    i:integer;
Begin
    i:=1;
    while (i<N) and (A[i] < X) do i:= i + 1;
    if (A[i] = X) then Sequentialsearch2:=i
    else Sequentialsearch2:=0;
end;
     
Function binarySearch(A:Larik; low:integer; n:integer; x:integer):integer;
var 
    mid: integer;
begin
    mid:= (n + low) div 2;
    if(low<=n) then
        begin
            if (A[mid] = x) then binarySearch:= mid
            else if (A[mid] >x) then binarySearch:= binarySearch(A,low,mid-1,x)
            else binarySearch:= binarySearch(A,mid+1,n,x);
        end
    else binarySearch:= 0;
end;

var
i,n,x:integer;
A: Larik;
begin
    clrscr;
    n:=10;
    x:=400;
    for i :=1 to n do A[i]:= i*100;
    writeln(SequentialSearch(A,n,x));
    writeln(SequentialSearch2(A,n,x));
    writeln(binarySearch(A,1,n,x));
end.