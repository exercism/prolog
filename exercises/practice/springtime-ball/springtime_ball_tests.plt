pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(springtime_ball).

    test(lou, condition(true)) :-
        dressed_as(lou, Costume),
        Costume == bear.

    test(celeste, condition(pending)) :-
        dressed_as(celeste, Costume),
        Costume == cleopatra.

    test(vince, condition(pending)) :-
        dressed_as(vince, Costume),
        Costume == batman.

    test(nala, condition(pending)) :-
        dressed_as(nala, Costume),
        Costume == snow_white.

    test(rajat, condition(pending)) :-
        dressed_as(rajat, Costume),
        Costume == prince.

    test(tamou, condition(pending)) :-
        dressed_as(tamou, Costume),
        Costume == cat.

    test(nuhk, condition(pending)) :-
        dressed_as(nuhk, Costume),
        Costume == donald_duck.

    test(ann, condition(pending)) :-
        dressed_as(ann, Costume),
        Costume == mermaid.

:- end_tests(springtime_ball).
