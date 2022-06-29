-module(fizzbuzz_tests).
-include_lib("eunit/include/eunit.hrl").

final_answer_test() ->
  ?assertEqual([1,2,"Fizz",4,"Buzz","Fizz",7,8,"Fizz","Buzz",11,"Fizz",13,14,"FizzBuzz"], fizzbuzz:answer(15)).

final_answer2_test() ->
  ?assertEqual([1,2,"Fizz",4,"Buzz"], fizzbuzz:answer(5)).

convert_3_test() ->
  ?assertEqual("Fizz", fizzbuzz:convert(3)).
  
convert_3_test() ->
  ?assertEqual("Buzz", fizzbuzz:convert(5)).  