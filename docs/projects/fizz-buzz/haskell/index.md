---
title: Fizz Buzz in Haskell
layout: default
date: 2018-08-13
featured-image: fizz-buzz-in-every-language.png
last-modified: 2018-08-13

---

Welcome to the [Fizz Buzz](https://rzuckerm.github.io/sample-programs-website-copy/projects/fizz-buzz) in [Haskell](https://rzuckerm.github.io/sample-programs-website-copy/languages/haskell) page! Here, you'll find the source code for this program as well as a description of how the program works.

## Current Solution

{% raw %}

```haskell
module Main where

fizzbuzz :: Int -> String
fizzbuzz x
    | x `mod` 15 == 0 = "FizzBuzz"
    | x `mod` 3  == 0 = "Fizz"
    | x `mod` 5  == 0 = "Buzz"
    | otherwise       = show x

main = mapM (putStrLn . fizzbuzz) [1..100]
```

{% endraw %}

[Fizz Buzz](https://rzuckerm.github.io/sample-programs-website-copy/projects/fizz-buzz) in [Haskell](https://rzuckerm.github.io/sample-programs-website-copy/languages/haskell) was written by:

- Jeremy Grifski

If you see anything you'd like to change or update, [please consider contributing](https://github.com/TheRenegadeCoder/sample-programs).

## How to Implement the Solution

No 'How to Implement the Solution' section available. [Please consider contributing](https://github.com/TheRenegadeCoder/sample-programs-website).

## How to Run the Solution

No 'How to Run the Solution' section available. [Please consider contributing](https://github.com/TheRenegadeCoder/sample-programs-website).