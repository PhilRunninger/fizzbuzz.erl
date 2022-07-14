-module(fizzbuzz).
-export([answer/1, answer/2, convert/2]).

answer(N) -> answer(N, [{3,"Fizz"},{5,"Buzz"}]).

answer(N,Translations) -> answer(0, N, Translations, []).

answer(_N, _N, _, Result) -> lists:reverse(Result);
answer(I, N, Translations, Result) -> answer(I+1, N, Translations, [convert(I+1,Translations)|Result]).

convert(I, Translations) -> convert(I, Translations, []).

convert(I, [], []) -> I;
convert(_, [], Result) -> string:join(lists:reverse(Result),"");
convert(I, [{From,To}|T], Result) when I rem From == 0 -> convert(I, T, [To|Result]);
convert(I, [_|T], Result) -> convert(I, T, Result).

