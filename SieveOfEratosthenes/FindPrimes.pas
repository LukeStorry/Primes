//Written by Luke Storry

//Primes Project


program SieveOfEratosthenes;

var
  allNumbers : Array[0..1000000] of Integer;
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


 for i:=2 to n do allNumbers[i] := i; //initializes numberline

 for i:=2 to Round(Sqrt(n)) do
   begin
     if not (allNumbers[i] = 0) then      //if current number is not marked as non-prime
       for j:=2 to n do allNumbers[i*j] := 0 //mark all multiples of i as non-prime
   end;


 numcount := 0;

 for i:=2 to n do
   begin
       if not (allNumbers[i] = 0) then      //if current number is not marked as non-prime
         begin
            Write(i:5, ' ');  //output that number in the list of primes
            numcount += 1;
            if numcount MOD 10 = 0 then Writeln;  //10 numbers per line
         end;
   end;

 Readln;

end.




