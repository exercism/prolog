pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(pangram).

    test(lou, condition(true)) :-
        dressed_as(lou, Costume),
        Costume == bear.

    test(tess, condition(pending)) :-
        dressed_as(tess, Costume),
        Costume == gipsy.

    test(vince, condition(pending)) :-
        dressed_as(vince, Costume),
        Costume == batman.

    test(mary, condition(pending)) :-
        dressed_as(mary, Costume),
        Costume == snow_white.

    test(matt, condition(pending)) :-
        dressed_as(matt, Costume),
        Costume == prince.

    test(sue, condition(pending)) :-
        dressed_as(sue, Costume),
        Costume == cat.

    test(chuck, condition(pending)) :-
        dressed_as(chuck, Costume),
        Costume == donald_duck.

    test(ann, condition(pending)) :-
        dressed_as(ann, Costume),
        Costume == witch.

:- end_tests(pangram).
