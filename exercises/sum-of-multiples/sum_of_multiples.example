factored([Curr|Factors], Num) :-
    0 is mod(Num, Curr), !;
    factored(Factors, Num).

sum_of_multiples(_, 0, 0) :- !.
sum_of_multiples(Factors, Limit, Sum) :-
    Next is Limit - 1,
    sum_of_multiples(Factors, Next, NextSum),
    (
        factored(Factors, Limit),
        Sum is Limit + NextSum, !;
        Sum is NextSum
    ).

