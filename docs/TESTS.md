# Running Tests

SWI Prolog can either be run interactively or by executing it directly at the
command line.

## Command line

The following command can be used to run the tests from the command line:

```bash
swipl -f <exercise>.pl -s <exercise>_tests.plt -g run_tests,halt -t 'halt(1)'
```

Replace `<exercise>` with the name of the exercise you are implementing.

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

Replace `<exercise>` with the name of the exercise you are implementing.

### Reloading changes

Once the above files are loaded, you can apply any changes you've made
by running:

```
?- make.
```

## Skipped tests

When you first begin an exercise, only the first test will run. The rest have
been skipped by adding `condition(pending)` to the `test` goal. Once the first
test passes, un-skip the next test by changing `pending` in `condition(pending)`
to `true`. Repeat for each test until they are all running and passing.

### Command line

Add the `-- --all` argument to the end of the command to also run any pending tests:

```bash
swipl -f <exercise>.pl -s <exercise>_tests.plt -g run_tests,halt -t 'halt(1)' -- --all
```
