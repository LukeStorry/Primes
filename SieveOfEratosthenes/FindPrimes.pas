//Written by Luke Storry

//Part of my Primes Project:    github.com/LukeStorry/Primes

program FindPrimes;

var
  allNumbers : Array[0..100000] of Boolean;
  n , i , j , numcount   : Integer;

begin   //Main Program
 Writeln('Prime Numbers Finder');
 Writeln('Written By Luke Storry');
 Writeln;
 Writeln('Using the Sieve of Eratosthenes');
 Writeln; Writeln;Writeln;

 Writeln('This program will output all the primes up to a value n.');
 Write('Please enter what value of n you would like to go up to:   ');
 Readln(n); Writeln; Writeln;


 for i:=2 to n do allNumbers[i] := True; //initializes array

 for i:=2 to Round(Sqrt(n)) do
   begin
     if (allNumbers[i] = True) then   //if current number is marked as prime
       for j:=2 to n do allNumbers[i*j] := false //mark all multiples of i as non-prime
   end;


 numcount := 0;

 for i:=2 to n do
   begin
       if (allNumbers[i] = true) then    //if current number is marked as prime
         begin
            Write(i:5, ' ');  //output that number in the list of primes
            numcount += 1;
            if numcount MOD 10 = 0 then Writeln;  //10 numbers per line
         end;
   end;

 Readln;

end.




