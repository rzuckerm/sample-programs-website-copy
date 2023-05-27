---
title: Baklava in Rust
layout: default
date: 2023-04-06
featured-image: baklava-in-every-language.jpg
last-modified: 2023-04-06

---

Welcome to the [Baklava](https://rzuckerm.github.io/sample-programs-website-copy/projects/baklava) in [Rust](https://rzuckerm.github.io/sample-programs-website-copy/languages/rust) page! Here, you'll find the source code for this program as well as a description of how the program works.

## Current Solution

{% raw %}

```rust
fn main() {
    for i in -10i32..11i32 {
        let num_spaces: usize = i.abs() as usize;
        println!("{}{}", " ".repeat(num_spaces), "*".repeat(21 - 2 * num_spaces));
    }
}
```

{% endraw %}

[Baklava](https://rzuckerm.github.io/sample-programs-website-copy/projects/baklava) in [Rust](https://rzuckerm.github.io/sample-programs-website-copy/languages/rust) was written by:

- rzuckerm

If you see anything you'd like to change or update, [please consider contributing](https://github.com/TheRenegadeCoder/sample-programs).

## How to Implement the Solution

No 'How to Implement the Solution' section available. [Please consider contributing](https://github.com/TheRenegadeCoder/sample-programs-website).

## How to Run the Solution

No 'How to Run the Solution' section available. [Please consider contributing](https://github.com/TheRenegadeCoder/sample-programs-website).