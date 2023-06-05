// program exFunction;
// var
//    a, b, ret : integer;

// (*function definition *)
// function max(num1, num2: integer): integer;
// var
//    (* local variable declaration *)
//    result: integer;

// begin
//    if (num1 > num2) then
//       result := num1
   
//    else
//       result := num2;
//    max := result;
// end;

// begin
//    a := 100;
//    b := 200;
//    (* calling a function to get max value *)
//    ret := max(a, b);
   
//    writeln( 'Max value is : ', ret );
// end.

program maxFungsi;
   
var 
    a,b,ret : Integer;

function max(n1, n2 : Integer) : Integer;

var 
    result: Integer;

begin
   if (n1 > n2) then
      result := n1
   
   else
      result := n2;
   max := result;
end;

begin
  a := 300;
  b := 100;
  ret:= max(a,b);
  WriteLn('The max number is ', ret)
end.