---
title: Factorial in Every Language
layout: default
date: 2018-11-01
last-modified: 2020-05-02
featured-image: factorial-in-every-language.jpg
tags: [factorial]
authors:

---

Welcome to the Factorial page! Here, you'll find a description of the project as well as a list of sample programs written in various languages.

## Description

The factorial of an integer `n` is defined as:

`n! = 1 x 2 x 3 x 4 x ... x n`

With the special case `0! = 1`.


## Requirements

You must write an executable program that accepts an integer `n` on standard
input via the command line, and outputs `n!` to standard output.

Note that the factorial function grows very quickly. For example, `4! = 24`
but `8! = 40320`. Therefore, you should impose a limit on the input, so that
the largest factorial still fits into your language's largest supported datatype.

Also note that the factorial is not defined for negative integers.


## Testing

Every project in the [Sample Programs repo](https://github.com/TheRenegadeCoder/sample-programs) should be tested.
In this section, we specify the set of tests specific to Factorial.
In order to keep things simple, we split up the testing as follows:

- Factorial Valid Tests
- Factorial Invalid Tests

### Factorial Valid Tests

| Description | Input | Output |
| ----------- | ----- | ------ |
| Sample Input: Zero | "0" | "1" |
| Sample Input: One | "1" | "1" |
| Sample Input: Four | "4" | "24" |
| Sample Input: Eight | "8" | "40320" |
| Sample Input: Ten | "10" | "3628800" |

### Factorial Invalid Tests

| Description | Input |
| ----------- | ----- |
| No Input |  |
| Empty Input | "" |
| Invalid Input: Not A Number | "asdf" |
| Invalid Input: Negative | "-1" |

All of these tests should output the following:

```
Usage: please input a non-negative integer
```


## Articles

- [Factorial in Algol68](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/algol68)
- [Factorial in Bash](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/bash)
- [Factorial in C](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/c)
- [Factorial in C#](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/c-sharp)
- [Factorial in C++](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/c-plus-plus)
- [Factorial in Cobol](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/cobol)
- [Factorial in Coffeescript](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/coffeescript)
- [Factorial in D](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/d)
- [Factorial in Elixir](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/elixir)
- [Factorial in Erlang](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/erlang)
- [Factorial in Euphoria](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/euphoria)
- [Factorial in Fortran](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/fortran)
- [Factorial in Go](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/go)
- [Factorial in Groovy](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/groovy)
- [Factorial in Haskell](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/haskell)
- [Factorial in Java](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/java)
- [Factorial in Javascript](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/javascript)
- [Factorial in Julia](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/julia)
- [Factorial in Kotlin](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/kotlin)
- [Factorial in Lisp](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/lisp)
- [Factorial in Lua](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/lua)
- [Factorial in Mathematica](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/mathematica)
- [Factorial in Matlab](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/matlab)
- [Factorial in Objective C](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/objective-c)
- [Factorial in Perl](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/perl)
- [Factorial in Php](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/php)
- [Factorial in Python](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/python)
- [Factorial in R](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/r)
- [Factorial in Rust](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/rust)
- [Factorial in Scala](https://rzuckerm.github.io/sample-programs-website-copy/projects/factorial/scala)

***

<nav class="project-nav">

<div id="prev" markdown="1">

[<-- Previous Project (Even Odd)](https://rzuckerm.github.io/sample-programs-website-copy/projects/even-odd)

</div>

<div id="next" markdown="1">

[Next Project (Fibonacci) -->](https://rzuckerm.github.io/sample-programs-website-copy/projects/fibonacci)

</div>

</nav>