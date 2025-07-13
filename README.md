# Exercism Prolog Track

[![Configlet](https://github.com/exercism/prolog/actions/workflows/configlet.yml/badge.svg)](https://github.com/exercism/prolog/actions/workflows/configlet.yml) [![Test](https://github.com/exercism/prolog/actions/workflows/test.yml/badge.svg)](https://github.com/exercism/prolog/actions/workflows/test.yml)

Exercism exercises in Prolog.

## Testing

To test all exercises, run `./bin/verify-exercises`.
This command will iterate over all exercises and check to see if their exemplar/example implementation passes all the tests.

To test a single exercise, run `./bin/verify-exercises <exercise-slug>`.

### Using Docker

If your track has a working [test runner](https://exercism.org/docs/building/tooling/test-runners), the `./bin/verify-exercises-in-docker` script can also be used to test all exercises.
This script pulls (_downloads_) the test runner's [Docker image](https://exercism.org/docs/building/tooling/test-runners/docker) and then uses Docker to run that image to test an exercise.

```exercism/note
The main benefit of this approach is that it best mimics how exercises are tested in production (on the website).
Another benefit is that you don't have to install track-specific dependencies (e.g. an SDK) locally, you just need Docker installed.
```

To test a single exercise, run `./bin/verify-exercises-in-docker <exercise-slug>`.

### Linting

[`configlet`](https://exercism.org/docs/building/configlet) is an Exercism-wide tool for working with tracks. You can download it by running:

```shell
$ ./bin/fetch-configlet
```

Run its [`lint` command](https://exercism.org/docs/building/configlet/lint) to verify if exercises have the required files and if config files are correct:

```shell
$ ./bin/configlet lint

The lint command is under development.
Please re-run this command regularly to see if your track passes the latest linting rules.

Basic linting finished successfully:
- config.json exists and is valid JSON
- config.json has these valid fields:
    language, slug, active, blurb, version, status, online_editor, key_features, tags
- Every concept has the required .md files
- Every concept has a valid links.json file
- Every concept has a valid .meta/config.json file
- Every concept exercise has the required .md files
- Every concept exercise has a valid .meta/config.json file
- Every practice exercise has the required .md files
- Every practice exercise has a valid .meta/config.json file
- Required track docs are present
- Required shared exercise docs are present
```

## Adding exercises

New (practice) exercises can be added via:

```shell
bin/add-practice-exercise <exercise-slug>
```

Optionally, you can also specify the exercise's difficulty (via `-d`) and/or author's GitHub username (via `-a`):

```shell
bin/add-practice-exercise -a foobar -d 3 <exercise-slug>
```
