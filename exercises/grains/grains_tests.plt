:- begin_tests(grains).

    test(first) :-
        square(1, 1).

    test(second) :-
        square(2, 2).

    test(third) :-
        square(3, 4).

    test(sixteen) :-
        square(16, 32768).

    test(twenty_three) :-
        square(23, 4194304).

    test(thirty_two) :-
        square(32, 2147483648).

    test(fifty_five) :-
        square(55, 18014398509481984).

    test(sixty_four) :-
        square(64, 9223372036854775808).

    test(total) :-
        total(18446744073709551615).

    test(zero, [fail]) :-
        square(0, _).

    test(negative, [fail]) :-
        square(-1, _).

    test(off_board, [fail]) :-
        square(65, _).

:- end_tests(grains).
