:- begin_tests(leap_tests).

    test(leap_year) :-
        leap(1996).

    test(standard_and_odd_year) :-
        not(leap(1997)).

    test(standard_even_year) :-
        not(leap(1998)).

    test(standard_nineteeth_century) :-
        not(leap(1900)).

    test(standard_eighteenth_century) :-
        not(leap(1800)).

    test(leap_twenty_fourth_century) :-
        leap(2400).

    test(leap_y2k) :-
        leap(2000).

:- end_tests(leap_tests).
