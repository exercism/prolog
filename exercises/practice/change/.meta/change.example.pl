:- use_module(library(clpfd)).

fewest_coins(Coins, Target, Change) :-
    Target #>= 0,
    length(Coins, N),
    length(Amounts, N),
    Amounts ins 0..Target,
    scalar_product(Coins, Amounts, #=, Target),
    label(Amounts),
    coins(Coins, Amounts, Change),
    !.

coins([], [], []).
coins([Coin|Coins], [Amount|Amounts], Change) :-
    length(CoinChange, Amount),
    maplist(=(Coin), CoinChange),
    coins(Coins, Amounts, Rest),
    append(CoinChange, Rest, Change).
