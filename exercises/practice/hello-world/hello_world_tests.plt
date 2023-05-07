% Please visit https://exercism.org/docs/tracks/prolog/installation
% for instructions on setting up prolog.
% Visit https://exercism.org/docs/tracks/prolog/tests
% for help running the tests for prolog exercises.

pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(hello_world).

    test(hello_world, condition(true)) :-
        hello_world('Hello, World!').

:- end_tests(hello_world).
