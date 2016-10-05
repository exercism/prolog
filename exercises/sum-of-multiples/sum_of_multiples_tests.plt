:- begin_tests(sum_of_multiples).

    test(low_limit) :-
        sum_of_multiples([3, 5], 1, 0).

    test(just_one_multiple) :-
        sum_of_multiples([3, 5], 4, 3).

    test(a_few_multiples) :-
        sum_of_multiples([3, 5], 10, 23).

    test(sum_more_multiples) :-
        sum_of_multiples([3, 5], 100, 2318).

    test(even_more_multiples) :-
        sum_of_multiples([3, 5], 1000, 233168).

    test(new_factors) :-
        sum_of_multiples([7, 13, 17], 20, 51).

    test(sum_more_new_factors) :-
        sum_of_multiples([4, 6], 15, 30).

    test(even_more_new_factors) :-
        sum_of_multiples([5, 6, 8], 150, 4419).

    test(divisible_factor) :-
        sum_of_multiples([5, 25], 51, 275).

    test(large_factors) :-
        sum_of_multiples([43, 47], 10000, 2203160).

    test(every_num) :-
        sum_of_multiples([1], 100, 4950).

    test(no_factors) :-
        sum_of_multiples([], 10000, 0).

:- end_tests(sum_of_multiples).
