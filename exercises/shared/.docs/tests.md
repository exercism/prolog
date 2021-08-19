# Tests

## Non-interactive

To run your implementation directly run:

```bash
swipl -f <exercise>.pl -s <exercise>_tests.plt -g run_tests,halt -t 'halt(1)'
```

In both cases, replace `<exercise>` with the name of the exercise you are implementing.

## Interactive

To run prolog interactively first run:

```bash
swipl
```

After the prolog console starts, load your implementation and run the tests
with:

```
?- ["<exercise>.pl"].
?- ["<exercise>_tests.plt"].
?- run_tests.
```

In both cases, replace `<exercise>` with the name of the exercise you are implementing.

## Skipped tests

When you first begin an exercise, only the first test will run. The rest have
been skipped by adding `condition(pending)` to the `test` goal. Once the first
test passes, un-skip the next test by changing `pending` in `condition(pending)`
to `true`. Repeat for each test until they are all running and passing.