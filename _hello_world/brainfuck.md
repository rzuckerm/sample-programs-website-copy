---
title: Hello World in Brainfuck
layout: default
---

Welcome to yet another installment of Hello World in Every Language. Today, we’re taking a look at Hello World in Brainfuck brought to us by Christoph Böhmwalder, one of our biggest contributors to the Sample Programs collection.

## Brainfuck Background

According to Wikipedia, Brainfuck is an esoteric programming language created in 1992, and notable for its extreme minimalism. As people have implemented more and more ridiculous programs with the language, it has become relatively well-known over the years. Nowadays some see it as the ultimate coding challenge to create something useful in Brainfuck.

At the core of the language is a more-than-compact instruction set, comprising of a whopping eight instructions. Brainfuck uses a machine model consisting of an infinite list of one-byte cells, an instruction pointer, and a cell pointer. The instructions can be used to interact with this environment: < and > move the cell pointer, + and - increment or decrement the value of the cell at the current pointer, and [ and ] denote a loop.

A loop only starts when the value of the current cell is non-zero, otherwise execution jumps to the end of the loop. Likewise, a loop ends when the value is zero, otherwise the program jumps to the beginning of the loop. The remaining two instructions, , and . read one character from the input into the current cell and write one character from the current cell to the output, respectively. That’s it!

## Hello World in Brainfuck

With that out of the way, let’s take a look at the Hello World sample:

```brainfuck
>++++++++[<+++++++++>-]<.>++++[<+++++++>-]<+.+++++++..+++.>>++++++[<+++++++>-]<+
+.------------.>++++++[<+++++++++>-]<+.<.+++.------.--------.>>>++++[<++++++++>-
]<+.
```

If you’re unfamiliar with Brainfuck, this might not really look like a “Hello World” example to you. It might even look a little intimidating. Granted, the syntax might not be the most verbose, but fear not! I’m sure it will start making sense once we break it down.

For starters, let’s reindent it a little bit:

```brainfuck
>++++++++[<+++++++++>-]<.
>++++[<+++++++>-]<+.
+++++++..
+++.
>>++++++[<+++++++>-]<++.
------------.
>++++++[<+++++++++>-]<+.
<.
+++.
------.
--------.
>>>++++[<++++++++>-]<+.
```

Well, that’s already looking slightly better. Remember, the . operator writes the current cell value to the output, so we’ve inserted a line break for every character that gets printed.

Let’s look at it line by line:

```brainfuck
>++++++++[<+++++++++>-]<.
We can see that we immediately move one cell to the right and increment that cell’s value eight times. This gives us—you guessed it—the value 8 in cell 1.
```

Then we start a loop, in which we move left (back to cell 0), add nine to that cell, move right again, and subtract one from the value of cell 1. Remember that the loop runs until the cell value is zero, so this would run 8 times, adding 9 to cell 0 every time. So we can already see that the value of cell 0 at this point is 72, which corresponds to the uppercase letter ‘H’ in the ASCII table.

So, we got our first character printed. Let’s look at the second line:

```brainfuck
>++++[<+++++++>-]<+.
```

You might immediately notice that this line looks quite similar to the last one. That might be because it does pretty much exactly the same thing. The only difference is in the numbers. It adds the value 28 (4 times 7) to cell 0, and then adds one more at the end of the loop, giving us a value of 101, or a lowercase ‘e’.

This is basically how the entire program works. It’s just a matter of choosing the right path in order to get from one value to the next by only using simple addition, subtraction, and loops.

## How to Run the Solution

There are plenty of Brainfuck interpreters (and even compilers!) available, online or offline:

Copy.sh
Sange.fi
Dcode.fr

As a starting point, here’s this example on “Brainfuck Visualizer”, an online tool that displays each step of a Brainfuck program’s execution.

## Sample Programs in Every Language

Well, that’s it for now. If you enjoyed this article, why not let us know in the comments below. Alternatively, you can always share this article with your friends on social media. If you’re feeling adventurous, consider joining The Renegade Coder community. That way, you’ll always know when something new is released on the site.