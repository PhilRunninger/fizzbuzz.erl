# This a copy of my [cyber-dojo exercise](https://cyber-dojo.org/kata/edit/Z4EHgd):
- Exercise: `Fizz Buzz`
- Language & test-framework: `Erlang, eunit`

---

It was fun diving back into Erlang. I'm a little rusty, but it came back pretty quick. I did this in a TDD (test-driven development) fashion, with each run of the tests a new commit:
1. Write a test
1. Watch it fail - **Red**
1. Write the code to make the test pass - **Green**
1. Clean up the code if required - **Refactor**
1. Repeat as necessary

Once the stated problem was [finished](https://github.com/PhilRunninger/fizzbuzz.erl/tree/4b413c6ac15b7737804c7c8c46ec009969e0df19), I imposed design changes on my programmer (also me):
1. Change 3 and 5 to something else.
1. I don't like "Fizz" and "Buzz". Let me choose something else.
1. What if I want more than two number-to-word replacements?

These last-minute (or even years-later) changes are common in business. Anticipating them and planning for them ahead of time can save a lot of time down the road. If a code kata is used in an interview, changing requirements like this can help evaluate a prospective employee's ability to deal with the unexpected by writing flexible code.
