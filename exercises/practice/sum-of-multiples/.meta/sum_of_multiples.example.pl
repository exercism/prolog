:- use_module(library(clpfd)).

sum_of_multiples(Factors, Limit, Sum) :-
    findall(Multiple, multiple(Factors, Limit, Multiple), Multiples),
    list_to_set(Multiples, UniqueMultiples),
    sum_list(UniqueMultiples, Sum).
    
multiple(Factors, Limit, Multiple) :-
    Upper #= Limit - 1,
    between(0, Upper, Multiple),
    member(Factor, Factors),
    Multiple rem Factor #= 0.
