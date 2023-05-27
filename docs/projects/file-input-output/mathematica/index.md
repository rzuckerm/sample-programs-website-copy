---
title: File Input Output in Mathematica
layout: default
date: 2023-01-21
featured-image: file-input-output-in-every-language.jpg
last-modified: 2023-01-21

---

Welcome to the [File Input Output](https://rzuckerm.github.io/sample-programs-website-copy/projects/file-input-output) in [Mathematica](https://rzuckerm.github.io/sample-programs-website-copy/languages/mathematica) page! Here, you'll find the source code for this program as well as a description of how the program works.

## Current Solution

{% raw %}

```mathematica
(* Code *)

Module[{file = CreateFile["output.txt"]},
 (* open the file, write by line, close *)
 Module[{write = OpenWrite[file]},
  WriteLine[write, #] & /@ { "A line of text", "Another line of text"};
  Close[write]];
 
 (* open the file, read all at once, print, close *)
 Module[{read = OpenRead[file]},
  Print[ReadString[read]];
  Close[read]]] (* return path to file as result *)


(* Valid Tests *)


(* Invalid Tests *)
```

{% endraw %}

[File Input Output](https://rzuckerm.github.io/sample-programs-website-copy/projects/file-input-output) in [Mathematica](https://rzuckerm.github.io/sample-programs-website-copy/languages/mathematica) was written by:

- Ben Hekster

If you see anything you'd like to change or update, [please consider contributing](https://github.com/TheRenegadeCoder/sample-programs).

## How to Implement the Solution

No 'How to Implement the Solution' section available. [Please consider contributing](https://github.com/TheRenegadeCoder/sample-programs-website).

## How to Run the Solution

No 'How to Run the Solution' section available. [Please consider contributing](https://github.com/TheRenegadeCoder/sample-programs-website).