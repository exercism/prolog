# Instructions append

## Working with Dates in Prolog

Prolog's built-in support for dates is [fairly rudimentary][built-in-dates-support].
While you can solve this exercise with just what's built into Prolog, a much nicer way to work with dates is via the [date_time package][date-time-package].

### Installing the date_time package

If your installed Swipl version is fairly up-to-date, you can install the package by running:

```bash
swipl pack install date_time
```

If that doesn't work, you can run:

```shell
swipl -g 'pack_install(date_time)'
```

```exercism/note
If you're using the online editor, you don't need to manually install anything.
```

### Using the date_time package

Ad the following code to the top of your solution file to use the `date_time` package:

```prolog
:- use_module(library(date_time)).
```

~~~~exercism/note
Tip: the [source of the date_time package][date-time-package-source] is well documented and be a great help!

[date-time-package-source]: https://www.swi-prolog.org/pack/file_details/date_time/prolog/date_time.pl?show=src
~~~~

[built-in-dates-support]: https://www.swi-prolog.org/pldoc/man?section=timedate
[date-time-package]: https://www.swi-prolog.org/pack/list?p=date_time
[date-time-package-source]: https://www.swi-prolog.org/pack/file_details/date_time/prolog/date_time.pl?show=src
