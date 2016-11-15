# xProlog
![build status](https://travis-ci.org/exercism/xprolog.svg?branch=master)

Exercism Exercises in Prolog

## Setup

See [INSTALLATION.md](https://github.com/exercism/xprolog/blob/master/docs/INSTALLATION.md)

##Contributing

Thank you so much for contributing! :tada:

We welcome pull requests that provide fixes and improvements to existing
exercises. If you're unsure, then go ahead and open a GitHub issue, and we'll
discuss the change.

Please keep the following in mind:

- Please start by reading the general Exercism [contributing guide](https://github.com/exercism/x-api/blob/master/CONTRIBUTING.md#the-exercise-data).

- Pull requests should be focused on a single exercise, issue, or change.

- We welcome changes to code style, and wording. Please open a separate PR for
  these changes if possible.

- Please open an issue before creating a PR that makes significant (breaking)
  changes to an existing exercise or makes changes across many exercises. It is
  best to discuss these changes before doing the work.

- Watch out for trailing spaces, extra blank lines, and spaces in blank lines.

- Each exercise must stand on its own. Do not reference files outside the
  exercise directory. They will not be included when the user fetches the
  exercise.

- Please do not add a README or README.md file to the exercise directory. The
READMEs are constructed using shared metadata, which lives in the [exercism/x-common](https://github.com/exercism/x-common) repository.

- Each problem should have a test suite, an example solution, and a template
file for the real implementation. The example solution should have the
`.example` file extension.

- Each test file should have code like the following at the top of the file.
  This allows the tests to be run on CI and configures tests to be skipped with
  the `condition(pending)` flag.

```prolog 
pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

```

- All but the initial test for each exercise should be`condition(pending)`. The
  first test should have `condition(true)` as an example of how to change the
  tests to run. Here are the first two tests in the `hello_world` exercise.

```prolog 
test(hello_world, condition(true)) :-
    hello_world('Hello World!').

test(hello_world_with_a_name, condition(pending)) :-
    hello_world('Alice', 'Hello Alice!').
```

All the tests for xProlog exercises can be run from the top level of the repo
with `bin/build.sh`. Please run this command before submitting your PR.

## License

The MIT License (MIT)

Copyright (c) 2016 Katrina Owen, _@kytrinyx.com
