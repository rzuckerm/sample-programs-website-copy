---
title: Fizz Buzz in Mathematica
layout: default
date: 2023-01-21
featured-image: fizz-buzz-in-every-language.png
last-modified: 2023-01-21

---

Welcome to the [Fizz Buzz](https://rzuckerm.github.io/sample-programs-website-copy/projects/fizz-buzz) in [Mathematica](https://rzuckerm.github.io/sample-programs-website-copy/languages/mathematica) page! Here, you'll find the source code for this program as well as a description of how the program works.

## Current Solution

{% raw %}

```mathematica
(* Code *)

(* It would be easy to simply print these out in a loop; however, in the spirit
of keeping the mathematical operation separate from its presentation I opted
to return the result as a list explicitly: *)

fizzBuzz = Function[{n},
   Table[
    Which[
     Divisible[i, 15], "FizzBuzz",
     Divisible[i, 5], "Buzz",
     Divisible[i, 3], "Fizz",
     True, i], {i, n}]];

(* This can be presented trivially: *)

Column[fizzBuzz[100]]


(* Valid Tests *)


(* Invalid Tests *)
```

{% endraw %}

[Fizz Buzz](https://rzuckerm.github.io/sample-programs-website-copy/projects/fizz-buzz) in [Mathematica](https://rzuckerm.github.io/sample-programs-website-copy/languages/mathematica) was written by:

- Ben Hekster

If you see anything you'd like to change or update, [please consider contributing](https://github.com/TheRenegadeCoder/sample-programs).

## How to Implement the Solution

No 'How to Implement the Solution' section available. [Please consider contributing](https://github.com/TheRenegadeCoder/sample-programs-website).

## How to Run the Solution

No 'How to Run the Solution' section available. [Please consider contributing](https://github.com/TheRenegadeCoder/sample-programs-website).