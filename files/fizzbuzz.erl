-module(fizzbuzz).
-export([answer/1, answer/2, convert/2]).

answer(N) -> answer(N, [{3,"Fizz"},{5,"Buzz"}]).

answer(N,Translations) -> answer(0, N, Translations, []).

answer(_Max, _Max, _, Result) -> lists:reverse(Result);
answer(N, Max, Translations, Result) -> answer(N+1, Max, Translations, [convert(N+1,Translations)|Result]).

convert(N, Translations) -> convert(N, Translations, []).

convert(N, [], []) -> N;
convert(_, [], Result) -> string:join(lists:reverse(Result),"");
convert(N, [{From,To}|T], Result) when N rem From == 0 -> convert(N, T, [To|Result]);
convert(N, [_|T], Result) -> convert(N, T, Result).

