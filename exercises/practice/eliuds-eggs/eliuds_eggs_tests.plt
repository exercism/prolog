pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(eliuds_eggs).

    test(zero_eggs, condition(true)) :-
        egg_count(0, Count), Count == 0.

    test(one_egg, condition(pending)) :-
        egg_count(16, Count), Count == 1.

    test(four_eggs, condition(pending)) :-
        egg_count(89, Count), Count == 4.

    test(thirteen_eggs, condition(pending)) :-
        egg_count(2000000000, Count), Count == 13.

:- end_tests(eliuds_eggs).
