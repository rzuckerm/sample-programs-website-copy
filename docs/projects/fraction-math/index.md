---
title: Fraction Math in Every Language
layout: default
date: 2019-10-10
last-modified: 2022-05-10
featured-image: fraction-math-in-every-language.jpg
tags: [fraction-math]
authors:
  - niraj-kamdar
  - the_renegade_coder

---

Welcome to the Fraction Math page! Here, you'll find a description of the project as well as a list of sample programs written in various languages.

## Description

Languages like python have built-in utilities or functions for working with fractions.
Many of these fractions functions follow a similar pattern across programming languages: 
takes a numerator and a denomenator as an attribute.
Perform basic arithmatic and relational operations with operator overloading.


## Requirements

In general, a fractions library should perform the following:

1. Perform arithmatic operation like multiplications, addition etc.
2. Give output for relational operations like >=, >, == etc.

More specifically, begin with creating object instance of fraction class with two attributes:
numerator and denomenator.Using operator overloading feature of langauge implement basic arithmatic
and relational operaions.

For instance `./fraction-math "6/2" "+" "1/4"` would output `13/4`

In addition, there should be some error handling for situations where the user
doesn't supply any input.


## Testing

Every project in the [Sample Programs repo](https://github.com/TheRenegadeCoder/sample-programs) should be tested.
In this section, we specify the set of tests specific to Fraction Math.
In order to keep things simple, we split up the testing as follows:

- Fractions Valid Tests
- Fractions Invalid Tests

### Fractions Valid Tests

| Description | Fraction 1 | Operation | Fraction 2 | Output |
| ----------- | ---------- | --------- | ---------- | ------ |
| Sample Input: Addition | "2/3" | "+" | "4/5" | "22/15" |
| Sample Input: Multiplication | "2/3" | "*" | "4/5" | "8/15" |
| Sample Input: Subtraction | "2/3" | "-" | "4/5" | "-2/15" |
| Sample Input: Division | "2/3" | "/" | "4/5" | "5/6" |
| Sample Input: Equals | "2/3" | "==" | "4/5" | "0" |
| Sample Input: Greater Than | "2/3" | ">" | "4/5" | "0" |
| Sample Input: Less Than | "2/3" | "<" | "4/5" | "1" |
| Sample Input: Greater Than Equals | "2/3" | ">=" | "4/5" | "0" |
| Sample Input: Less Than Equals | "2/3" | "<=" | "4/5" | "1" |
| Sample Input: Not Equals | "2/3" | "!=" | "4/5" | "1" |

### Fractions Invalid Tests

| Description | Input |
| ----------- | ----- |
| No Input |  |
| Empty Input | "" |

All of these tests should output the following:

```
Usage: ./fraction-math operand1 operator operand2
```


## Articles

- [Fraction Math in Algol68](https://rzuckerm.github.io/sample-programs-website-copy/projects/fraction-math/algol68)
- [Fraction Math in C++](https://rzuckerm.github.io/sample-programs-website-copy/projects/fraction-math/c-plus-plus)
- [Fraction Math in Euphoria](https://rzuckerm.github.io/sample-programs-website-copy/projects/fraction-math/euphoria)
- [Fraction Math in Mathematica](https://rzuckerm.github.io/sample-programs-website-copy/projects/fraction-math/mathematica)
- [Fraction Math in Php](https://rzuckerm.github.io/sample-programs-website-copy/projects/fraction-math/php)
- [Fraction Math in Python](https://rzuckerm.github.io/sample-programs-website-copy/projects/fraction-math/python)
- [Fraction Math in Rust](https://rzuckerm.github.io/sample-programs-website-copy/projects/fraction-math/rust)
- [Fraction Math in Swift](https://rzuckerm.github.io/sample-programs-website-copy/projects/fraction-math/swift)

***

<nav class="project-nav">

<div id="prev" markdown="1">

[<-- Previous Project (Fizz Buzz)](https://rzuckerm.github.io/sample-programs-website-copy/projects/fizz-buzz)

</div>

<div id="next" markdown="1">

[Next Project (Hello World) -->](https://rzuckerm.github.io/sample-programs-website-copy/projects/hello-world)

</div>

</nav>