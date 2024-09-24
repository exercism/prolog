# Instruction

Your task is to solve a binary puzzle.
Every binary puzzle has exactly _one_ solution, which can be found by applying these rules:

1. Every cell must contain either a zero or a one.
2. More than two of the same digits can't be adjacent. Thus, if two adjacents cells contain the same digit, the cells next to the digits must contain the other digit.
3. Each row and each column must contain an equal number of zeros and ones.
4. Each row and column is unique.

You'll get passed in an uncompleted puzzle as rows of zeros and ones, with placeholders (`_`) for the unknown values.
The goal is to define the rules for the binary puzzle, which will let the tests figure out the values for the placeholders (you don't do that yourselves).
Your implementation must useProlog's [Constraint Logic Programming over Finite Domains (CLP(FD))](https://www.swi-prolog.org/man/clpfd.html), which is perfect for these types of tasks.

````exercism/note
To help you get started, the stub file already includes the [`clpfd` library](https://www.swi-prolog.org/man/clpfd.html) via:

```prolog
:- use_module(library(clpfd)).
```
````
