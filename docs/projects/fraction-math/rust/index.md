---
title: Fraction Math in Rust
layout: default
date: 2023-04-12
last-modified: 2023-04-12

---

Welcome to the [Fraction Math](https://sampleprograms.io/projects/fraction-math) in [Rust](https://sampleprograms.io/languages/rust) page! Here, you'll find the source code for this program as well as a description of how the program works.

## Current Solution

{% raw %}

```rust
use std::env::args;
use std::process::exit;
use std::num::ParseIntError;
use std::fmt;
use std::ops;
use std::cmp::Ordering;

fn usage() -> ! {
    println!("Usage: ./fraction-math operand1 operator operand2");
    exit(0);
}

fn parse_int(s: String) -> Result<i32, ParseIntError> {
    s.trim().parse::<i32>()
}

fn parse_fraction(s: String) -> Option<Fraction> {
    // Parse numerator, denonimator, and remainder
    let parts: Vec<Result<i32, ParseIntError>> = s.split("/")
        .map(|s| parse_int(s.to_string()))
        .collect();

    // Return None if numerator or denominator invalid or there was a remainder
    // Return numerator with a denominator of 1 if just numerator
    // Otherwise numerator and denominator
    let num_parts = parts.len();
    match parts.iter().any(|s| s.is_err()) || num_parts > 2 {
        true => None,
        false => {
            let num: i32 = parts[0].clone().unwrap();
            let den: i32 = if num_parts < 2 { 1 } else { parts[1].clone().unwrap() };
            Some(Fraction::new(num, den))
        },
    }
}

#[derive(Copy, Clone)]
struct Fraction {
    num: i32,
    den: i32,
}

impl Fraction {
    // Create new fraction
    fn new(num: i32, den: i32) -> Self {
        Self {num: num, den: den}
    }

    // Fraction comparison:
    // n1/d1 OP n2/d2 = n1*d2 OP n2*d1
    fn compare(&self, other: &Self) -> i32 {
        self.num * other.den - other.num * self.den
    }
}

impl fmt::Debug for Fraction {
    // Show fraction
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "{}/{}", self.num, self.den)
    }
}

impl ops::Add for Fraction {
    type Output = Self;

    // Add fractions:
    // n1/d1 + n2/d2 = (n1*d2 + n2*d1) / (d1*d2)
    fn add(self, other: Self) -> Self {
        reduce(
            self.num * other.den + other.num * self.den,
            self.den * other.den
        )
    }
}

impl ops::Sub for Fraction {
    type Output = Self;

    // Subtract fractions:
    // n1/d1 - n2/d2 = (n1*d2 - n2*d1) / (d1*d2)
    fn sub(self, other: Self) -> Self {
        reduce(
            self.num * other.den - other.num * self.den,
            self.den * other.den
        )
    }
}

impl ops::Mul for Fraction {
    type Output = Self;

    // Mulitply fractions:
    // n1/d1 * n2/d2 = (n1*n2) / (d1*d2)
    fn mul(self, other: Self) -> Self {
        reduce(self.num * other.num, self.den * other.den)
    }
}

impl ops::Div for Fraction {
    type Output = Self;

    // Divide fractions:
    // (n1/d1) / (n2/d2) = (n1*d2) / (n2*d1)
    fn div(self, other: Self) -> Self {
        reduce(self.num * other.den, self.den * other.num)
    }
}

impl PartialOrd for Fraction {
    // Fraction comparison for ordering
    fn partial_cmp(&self, other: &Self) -> Option<Ordering> {
        Some(self.compare(other).cmp(&0))
    }
}

impl PartialEq for Fraction {
    // Fraction comparison for equality
    fn eq(&self, other: &Self) -> bool {
        self.compare(other) == 0
    }
}

// Fraction reduction
fn reduce(num: i32, den: i32) -> Fraction {
    if den == 0 {
        panic!("Division by 0");
    }

    // Reduce by dividing numerator and denominator by greatest common denominator,
    // and adjust sign of numerator and denominator as follows:
    //
    // n  d  sign n  sign d
    // +  +     +       +
    // +  -     -       +
    // -  +     -       +
    // -  -     +       +
    let den_sign: i32 = if den > 0 { 1 } else { -1 };
    let g: i32 = gcd(num, den);
    Fraction::new(den_sign * num / g, den.abs() / g)
}

// Greatest common denominator
fn gcd(a: i32, b: i32) -> i32 {
    let mut a: i32 = a.abs();
    let mut b: i32 = b.abs();
    while b != 0 {
        (a, b) = (b, a % b);
    }

    a
}

// Fraction result
enum FractionResult {
    Frac(Fraction),
    Bool(bool),
}

impl fmt::Debug for FractionResult {
    // Show fraction or boolean
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            Self::Frac(fraction) => write!(f, "{fraction:?}"),
            Self::Bool(boolean) => write!(f, "{}", *boolean as u8),
        }
    }
}

// Do fraction math
fn fraction_math(f1: Fraction, f2: Fraction, op: String) -> FractionResult {
    let op: &str = &op[..];
    match op {
        "+" => FractionResult::Frac(f1 + f2),
        "-" => FractionResult::Frac(f1 - f2),
        "*" => FractionResult::Frac(f1 * f2),
        "/" => FractionResult::Frac(f1 / f2),
        ">" => FractionResult::Bool(f1 > f2),
        ">=" => FractionResult::Bool(f1 >= f2),
        "<" => FractionResult::Bool(f1 < f2),
        "<=" => FractionResult::Bool(f1 <= f2),
        "==" => FractionResult::Bool(f1 == f2),
        "!=" => FractionResult::Bool(f1 != f2),
        _ => panic!("Invalid operation {op}")
    }
}

fn main() {
    // Parse 1st command-line argument
    let frac1 = parse_fraction(
        args().nth(1)
            .unwrap_or_else(|| usage())
    ).unwrap_or_else(|| usage());

    // Get 2nd command-line argument
    let op = args().nth(2).
        unwrap_or_else(|| usage());

    // Parse 3rd command-line argument
    let frac2 = parse_fraction(
        args().nth(3)
            .unwrap_or_else(|| usage())
    ).unwrap_or_else(|| usage());

    // Do fraction math and show result
    let result: FractionResult = fraction_math(frac1, frac2, op);
    println!("{result:?}");
}
```

{% endraw %}

[Fraction Math](https://sampleprograms.io/projects/fraction-math) in [Rust](https://sampleprograms.io/languages/rust) was written by:

- rzuckerm

If you see anything you'd like to change or update, [please consider contributing](https://github.com/TheRenegadeCoder/sample-programs).

**Note**: The solution shown above is the current solution in the Sample Programs repository as of Apr 15 2023 12:49:19. The solution was first committed on Apr 12 2023 09:19:43. As a result, documentation below may be outdated.

## How to Implement the Solution

No 'How to Implement the Solution' section available. [Please consider contributing](https://github.com/TheRenegadeCoder/sample-programs-website).

## How to Run the Solution

No 'How to Run the Solution' section available. [Please consider contributing](https://github.com/TheRenegadeCoder/sample-programs-website).