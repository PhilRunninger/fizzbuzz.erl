-module(fizzbuzz_tests).
-include_lib("eunit/include/eunit.hrl").

final_answer_test() ->
  ?assertEqual([1,2,"Fizz",4,"Buzz","Fizz",7,8,"Fizz","Buzz",11,"Fizz",13,14,"FizzBuzz"], fizzbuzz:answer(15)).

final_answer2_test() ->
  ?assertEqual([1,2,"Fizz",4,"Buzz"], fizzbuzz:answer(5)).

convert_3_test() ->
  ?assertEqual("Fizz", fizzbuzz:convert(3)).
  
convert_5_test() ->
  ?assertEqual("Buzz", fizzbuzz:convert(5)).  

convert_3x_test() ->
  ?assertEqual("Fizz", fizzbuzz:convert(6)),
  ?assertEqual("Fizz", fizzbuzz:convert(9)).


convert_5x_test() ->
  ?assertEqual("Buzz", fizzbuzz:convert(10)),
  ?assertEqual("Buzz", fizzbuzz:convert(20)).

convert_15x_test() ->
  ?assertEqual("FizzBuzz", fizzbuzz:convert(15)),
  ?assertEqual("FizzBuzz", fizzbuzz:convert(30)).

convert_non_fizz_buzz_test() ->
  ?assertEqual(2, fizzbuzz:convert(2)),
  ?assertEqual(4, fizzbuzz:convert(4)).

what_if_its_not_3_and_5_test() ->
  ?assertEqual([1,2,3,"Bob",5,"Cat",7,"Bob",9,10,11,"BobCat"], answer(12,[{4,"Bob"},{6,"Cat"}])).