pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(sum_of_multiples).

    test(low_limit, condition(true)) :-
        sum_of_multiples([3, 5], 1, Result),
        Result == 0.

    test(just_one_multiple, condition(pending)) :-
        sum_of_multiples([3, 5], 4, Result),
        Result == 3.

    test(a_few_multiples, condition(pending)) :-
        sum_of_multiples([3, 5], 10, Result),
        Result == 23.

    test(sum_more_multiples, condition(pending)) :-
        sum_of_multiples([3, 5], 100, Result),
        Result == 2318.

    test(even_more_multiples, condition(pending)) :-
        sum_of_multiples([3, 5], 1000, Result),
        Result == 233168.

    test(new_factors, condition(pending)) :-
        sum_of_multiples([7, 13, 17], 20, Result),
        Result == 51.

    test(sum_more_new_factors, condition(pending)) :-
        sum_of_multiples([4, 6], 15, Result),
        Result == 30.

    test(even_more_new_factors, condition(pending)) :-
        sum_of_multiples([5, 6, 8], 150, Result),
        Result == 4419.

    test(divisible_factor, condition(pending)) :-
        sum_of_multiples([5, 25], 51, Result),
        Result == 275.

    test(large_factors, condition(pending)) :-
        sum_of_multiples([43, 47], 10000, Result),
        Result == 2203160.

    test(every_num, condition(pending)) :-
        sum_of_multiples([1], 100, Result),
        Result == 4950.

    test(no_factors, condition(pending)) :-
        sum_of_multiples([], 10000, Result),
        Result == 0.

:- end_tests(sum_of_multiples).
