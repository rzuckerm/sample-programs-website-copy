---
title: Quine in C
layout: default
date: 2019-10-18
featured-image: quine-in-every-language.jpg
last-modified: 2019-10-18

---

Welcome to the [Quine](https://rzuckerm.github.io/sample-programs-website-copy/projects/quine) in [C](https://rzuckerm.github.io/sample-programs-website-copy/languages/c) page! Here, you'll find the source code for this program as well as a description of how the program works.

## Current Solution

{% raw %}

```c
#include "stdio.h"
int main() { char* s="#include %cstdio.h%c%cint main() { char* s=%c%s%c; printf(s,34,34,10,34,s,34,10); return 0; }%c"; printf(s,34,34,10,34,s,34,10); return 0; }
```

{% endraw %}

[Quine](https://rzuckerm.github.io/sample-programs-website-copy/projects/quine) in [C](https://rzuckerm.github.io/sample-programs-website-copy/languages/c) was written by:

- Juan D Frias

If you see anything you'd like to change or update, [please consider contributing](https://github.com/TheRenegadeCoder/sample-programs).

## How to Implement the Solution

No 'How to Implement the Solution' section available. [Please consider contributing](https://github.com/TheRenegadeCoder/sample-programs-website).

## How to Run the Solution

No 'How to Run the Solution' section available. [Please consider contributing](https://github.com/TheRenegadeCoder/sample-programs-website).