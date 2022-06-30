-module(fizzbuzz).
-export([answer/1, convert/1]).

answer(N) -> answer(1, N, []).

answer(_Max, _Max, Result) -> lists:reverse(Result);
answer(N, Max, Result) -> answer(N+1, Max, [convert(N)|Result]).

convert(N) when N rem 15 == 0 -> "FizzBuzz";
convert(N) when N rem 3 == 0 -> "Fizz";
convert(N) when N rem 5 == 0 -> "Buzz";
convert(N) -> N.
