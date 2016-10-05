:- begin_tests(binary_search).

    test(finds_a_value_in_an_array_with_one_element) :-
        binary_search([6], 6, 0).

    test(finds_a_value_in_the_middle_of_an_array) :-
        binary_search([1, 3, 4, 6, 8, 9, 11], 6, 3).

    test(finds_a_value_at_the_beginning_of_an_array) :-
        binary_search([1, 3, 4, 6, 8, 9, 11], 1, 0).

    test(finds_a_value_at_the_end_of_an_array) :-
        binary_search([1, 3, 4, 6, 8, 9, 11], 11, 6).

    test(finds_a_value_in_an_array_of_odd_length) :-
        binary_search([1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 634], 144, 9).

    test(finds_a_value_in_an_array_of_even_length) :-
        binary_search([1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377], 21, 5).

    test(identifies_that_a_value_is_not_included_in_the_array, [fail]) :-
        binary_search([1, 3, 4, 6, 8, 9, 11], 7, _).

    test(a_value_smaller_than_the_arrays_smallest_value_is_not_included, [fail]) :-
        binary_search([1, 3, 4, 6, 8, 9, 11], 0, _).

    test(a_value_larger_than_the_arrays_largest_value_is_not_included, [fail]) :-
        binary_search([1, 3, 4, 6, 8, 9, 11], 13, _).

    test(nothing_is_included_in_an_empty_array, [fail]) :-
        binary_search([], 1, _).

:- end_tests(binary_search).
