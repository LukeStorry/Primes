//Written by Luke Storry
//Primes Project
program FindPrimeFactors;
var
  num , i : Integer;

begin
    Writeln('Find Prime Factors.');
    Writeln('Written by Luke Storry');
    Writeln; Writeln;
    Writeln('This Program will output the prime factors of an input integer.');
    Writeln;
    Write('Please enter a number:  ');
     Readln(num);
    i:=1;
    While not (num = 1) do          //keep going until tempNum = 1
      begin
         i+=1;                      //go through all possible factors
         if num MOD i = 0 then      //if its a factor then
           begin
              Write(i , ', ');      //output the factor
              num := num DIV i;     //find the new temp number
              i-=1                  //lower i to check for repeated factors
           end;//if
      end;//while
   Readln; Readln;
end.
