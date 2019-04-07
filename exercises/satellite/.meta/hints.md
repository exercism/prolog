Try using Prolog DCGs. **But watch out for left recursion!**

For extra bonus points:

Make tree_traversals also work in "reverse," i.e. one of the traversal
lists is a variable, for example:

```
?- tree_traversals(node(nil,5,node(nil,9,nil)),Pre,[5,9])
Pre = [5, 9]
```

and also in-order traversal as variable and pre-order as a list.

This should be simple using DCGs.
