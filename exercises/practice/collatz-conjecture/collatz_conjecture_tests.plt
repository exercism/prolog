pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(collatz_conjecture).

    test(zero_steps_for_one, condition(true)) :-
        collatz_steps(1, 0).

    test(divide_if_even, condition(pending)) :-
        collatz_steps(16, 4).

    test(even_and_odd_steps, condition(pending)) :-
        collatz_steps(12, 9).

    test(large_number_of_even_and_odd_steps, condition(pending)) :-
        collatz_steps(1_000_000, 152).

    test(zero_is_an_error, [fail, condition(pending)]) :-
        collatz_steps(0, _).

    test(negative_value_is_an_error, [fail, condition(pending)]) :-
        collatz_steps(-1, _).

:- end_tests(collatz_conjecture).
