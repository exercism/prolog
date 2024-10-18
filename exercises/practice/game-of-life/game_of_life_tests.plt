pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(game_of_life).

    test(empty_CurrentGeneration, condition(true)) :-
        CurrentGeneration = [],
        tick(CurrentGeneration, NextGeneration),
        NextGeneration == [].

    test(live_cells_with_zero_live_neighbors_die, condition(pending)) :-
        CurrentGeneration = [
            [0, 0, 0],
            [0, 1, 0],
            [0, 0, 0]
        ],
        tick(CurrentGeneration, NextGeneration),
        NextGeneration == [
            [0, 0, 0],
            [0, 0, 0],
            [0, 0, 0]
        ].

    test(live_cells_with_only_one_live_neighbor_die, condition(pending)) :-
        CurrentGeneration = [
            [0, 0, 0],
            [0, 1, 0],
            [0, 1, 0]
        ],
        tick(CurrentGeneration, NextGeneration),
        NextGeneration == [
            [0, 0, 0],
            [0, 0, 0],
            [0, 0, 0]
        ].

    test(live_cells_with_two_live_neighbors_stay_alive, condition(pending)) :-
        CurrentGeneration = [
            [1, 0, 1],
            [1, 0, 1],
            [1, 0, 1]
        ],
        tick(CurrentGeneration, NextGeneration),
        NextGeneration == [
            [0, 0, 0],
            [1, 0, 1],
            [0, 0, 0]
        ].

    test(live_cells_with_three_live_neighbors_stay_alive, condition(pending)) :-
        CurrentGeneration = [
            [0, 1, 0],
            [1, 0, 0],
            [1, 1, 0]
        ],
        tick(CurrentGeneration, NextGeneration),
        NextGeneration == [
            [0, 0, 0],
            [1, 0, 0],
            [1, 1, 0]
        ].

    test(dead_cells_with_three_live_neighbors_become_alive, condition(pending)) :-
        CurrentGeneration = [
            [1, 1, 0],
            [0, 0, 0],
            [1, 0, 0]
        ],
        tick(CurrentGeneration, NextGeneration),
        NextGeneration == [
            [0, 0, 0],
            [1, 1, 0],
            [0, 0, 0]
        ].

    test(live_cells_with_four_or_more_neighbors_die, condition(pending)) :-
        CurrentGeneration = [
            [1, 1, 1],
            [1, 1, 1],
            [1, 1, 1]
        ],
        tick(CurrentGeneration, NextGeneration),
        NextGeneration == [
            [1, 0, 1],
            [0, 0, 0],
            [1, 0, 1]
        ].

    test(bigger_CurrentGeneration, condition(pending)) :-
        CurrentGeneration = [
            [1, 1, 0, 1, 1, 0, 0, 0],
            [1, 0, 1, 1, 0, 0, 0, 0],
            [1, 1, 1, 0, 0, 1, 1, 1],
            [0, 0, 0, 0, 0, 1, 1, 0],
            [1, 0, 0, 0, 1, 1, 0, 0],
            [1, 1, 0, 0, 0, 1, 1, 1],
            [0, 0, 1, 0, 1, 0, 0, 1],
            [1, 0, 0, 0, 0, 0, 1, 1]
        ],
        tick(CurrentGeneration, NextGeneration),
        NextGeneration == [
            [1, 1, 0, 1, 1, 0, 0, 0],
            [0, 0, 0, 0, 0, 1, 1, 0],
            [1, 0, 1, 1, 1, 1, 0, 1],
            [1, 0, 0, 0, 0, 0, 0, 1],
            [1, 1, 0, 0, 1, 0, 0, 1],
            [1, 1, 0, 1, 0, 0, 0, 1],
            [1, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 1, 1]
        ].

:- end_tests(game_of_life).
