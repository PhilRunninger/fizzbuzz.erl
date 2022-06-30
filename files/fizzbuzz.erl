-module(fizzbuzz).
-export([answer/1, convert/1]).

answer(N) -> answer(0, N, []).

answer(_Max, _Max, Result) -> lists:reverse(Result);
answer(N, Max, Result) -> answer(N+1, Max, [convert(N+1)|Result]).

convert(N) when N rem 15 == 0 -> "FizzBuzz";
convert(N) when N rem 3 == 0 -> "Fizz";
convert(N) when N rem 5 == 0 -> "Buzz";
convert(N) -> N.

answer(N,Translations) -> answer(0, N, Translations, []).

answer(_Max, _Max, _, Result) -> lists:reverse(Result);
answer(N, Max, Translations, Result) -> answer(N+1, Max, Translations, [convert(N+1,Translations)|Result]).

convert(N, Translations) -> convert(N, Translations, []).

convert(N, [], []) -> N;
convert(_, [], Result) -> string:join(list:reverse(Result));
convert(N, [{From,To}|T], Result) when N rem From == 0 -> convert(N, T, [To|Result]);
convert(N, [{From,To}|T], Result) -> convert(N, T, Result).

