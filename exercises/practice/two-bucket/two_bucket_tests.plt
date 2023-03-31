pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(two_bucket).

    test(bucket_one_of_size_3_and_bucket_two_of_size_5, condition(true)) :-
        measure(1, (3, 5), Stop, NumberOfMoves),
        Stop = (1, 5),
        NumberOfMoves = 4.

    test(bucket_one_of_size_5_and_bucket_two_of_size_3, condition(true)) :-
        measure(1, (5, 3), Stop, NumberOfMoves),
        Stop = (1, 3),
        NumberOfMoves = 8.

    test(bucket_one_of_size_7_and_bucket_two_of_size_11, condition(true)) :-
        measure(2, (7, 11), Stop, NumberOfMoves),
        Stop = (2, 11),
        NumberOfMoves = 14.

    test(bucket_one_of_size_11_and_bucket_two_of_size_7, condition(true)) :-
        measure(2, (11, 7), Stop, NumberOfMoves),
        Stop = (2, 7),
        NumberOfMoves = 18.

    test(measure_one_step_using_bucket_one_of_size_1_and_bucket_two_of_size_3_-_start_with_bucket_two, condition(true)) :-
        measure(3, (3, 1), Stop, NumberOfMoves),
        Stop = (3, 0),
        NumberOfMoves = 1.

    test(bucket_one_of_size_2_and_bucket_two_of_size_3, condition(true)) :-
        measure(3, (2, 3), Stop, NumberOfMoves),
        Stop = (2, 3),
        NumberOfMoves = 2.

    test(not_possible_to_reach_the_goal, [fail, condition(true)]) :-
        measure(6, (6, 15), _, _).

    test(with_the_same_buckets_but_a_different_goal_then_it_is_possible, condition(true)) :-
        measure(9, (6, 15), Stop, NumberOfMoves),
        Stop = (0, 9),
        NumberOfMoves = 10.

    test(goal_larger_than_both_buckets_is_impossible, [fail, condition(true)]) :-
        measure(8, (5, 7), _, _).

:- end_tests(two_bucket).
