# Instructions Append

## Bonus: Type equality not enforced

Tests don't validate if parameters aren't of the same ***type***.

### Implication

A solution with ***strict type equality*** would be **passing**.

Implication of such a solution:
```prolog
?- triangle(1.0, 1, 1).
false
```

### Resolution

The above example would necessarily be ***true***, for a solution passing the bonus tests.
