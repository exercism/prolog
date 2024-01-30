# Instructions Append

## Type equality not enforced

### Before

Tests didn't test for the situation in which parameters weren't of the same ***type***.

### Implication

A solution with ***strict type equality*** would be **passing**.

Example(of a solution enforcing type equality):
```prolog
?- triangle(1.0, 1, 1).
false
```

### Currently

A solution which doesn't enforce type equality is required.
The above example would necessarily be ***true***, for a solution passing the tests.
