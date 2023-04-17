:- use_module(library(clpfd)).

solve(Solution) :-
    Names = [amara, bjorn, cora, dale, emiko],
    Floors = [Amara, Bjorn, Cora, Dale, Emiko],
    Floors ins 1..5,
    all_different(Floors),
    pairs_keys_values(Solution, Names, Floors),
    Amara #< 5, %1
    Bjorn #> 1, %2
    Cora #> 1, Cora #< 5, %3
    Dale #> Bjorn, %4
    abs(Emiko - Cora) #> 1, %5
    abs(Cora - Bjorn) #> 1, %6
    label(Floors),
    !.

floor(Name, Floor) :-
    solve(Solution),
    member(Name-Floor, Solution),
    !.
