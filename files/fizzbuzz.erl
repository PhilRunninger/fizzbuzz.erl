-module(fizzbuzz).
-export([answer/1, convert/1]).

answer(15) -> [1,2,"Fizz",4,"Buzz","Fizz",7,8,"Fizz","Buzz",11,"Fizz",13,14,"FizzBuzz"];
answer(5) -> [1,2,"Fizz",4,"Buzz"].

convert(N) when N rem 15 == 0 -> "FizzBuzz";
convert(N) when N rem 3 == 0 -> "Fizz";
convert(N) when N rem 5 == 0 -> "Buzz".
