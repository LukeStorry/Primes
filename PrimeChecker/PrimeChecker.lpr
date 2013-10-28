//Written by Luke Storry
//Part of the Primes Project
program PrimeChecker;
var   i , num : Integer;
      isPrime : Boolean ;
begin
  Writeln('Prime Checker.');
  Writeln('Written by Luke Storry.');
  Writeln('This Program checks whether a number is prime.');
  Write('Please enter a number: '); Readln(num);
  isPrime:=True; //let's be optimistic
  for i:=2 to Round(Sqrt(num+1)) do
        if num MOD i = 0 then isPrime:=False;
  if isPrime = True
  then Writeln('That is a Prime.')
  else Writeln('That is not a Prime.');
  Readln;
end.
