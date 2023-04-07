:- use_module(library(clpfd)).

square_of_sum(N, Result) :-
    Sum is N * (N + 1) / 2,
    Result is Sum * Sum.

sum_of_squares(N, Result) :-
    Result is (N * (N + 1) * (2 * N + 1)) / 6.

difference(N, Result) :-
    square_of_sum(N, SquareOfSum),
    sum_of_squares(N, SumOfSquares),
    Result is SquareOfSum - SumOfSquares.
