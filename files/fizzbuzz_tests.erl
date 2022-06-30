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
  ?assertEqual([1,2,3,"Bob",5,"Cat",7,"Bob",9,10,11,"BobCat"], fizzbuzz:answer(12,[{4,"Bob"},{6,"Cat"}])).

user_specified_convert_test() ->
  Translations = [{3,"Fizz"},{5,"Buzz"}],
  ?assertEqual("Fizz", fizzbuzz:convert(3,Translations)),
  ?assertEqual("Buzz", fizzbuzz:convert(5,Translations)),  
  ?assertEqual("FizzBuzz", fizzbuzz:convert(15,Translations)),
  ?assertEqual(2, fizzbuzz:convert(2,Translations)).

what_if_it_isnt_3_and_5_or_fizz_and_buzz_test() ->
  Translations = [{4,"Bob"},{7,"Cat"}],
  ?assertEqual("Bob", fizzbuzz:convert(4,Translations)),
  ?assertEqual("Cat", fizzbuzz:convert(7,Translations)),  
  ?assertEqual("BobCat", fizzbuzz:convert(28,Translations)),
  ?assertEqual(2, fizzbuzz:convert(2,Translations)).
  
more_than_two_translations_test() ->
  Translations = [{3,"Larry"},{4,"Curly"},{5,"Moe"}],
  ?assertEqual("Larry", fizzbuzz:convert(3,Translations)),
  ?assertEqual("Curly", fizzbuzz:convert(4,Translations)),  
  ?assertEqual("Moe", fizzbuzz:convert(5,Translations)),
  ?assertEqual("LarryCurly", fizzbuzz:convert(12,Translations)),
  ?assertEqual("LarryMoe", fizzbuzz:convert(15,Translations)),
  ?assertEqual("CurlyMoe", fizzbuzz:convert(20,Translations)),
  ?assertEqual("LarryCurlyMoe", fizzbuzz:convert(60,Translations)),
  ?assertEqual(2, fizzbuzz:convert(2,Translations)).
  
