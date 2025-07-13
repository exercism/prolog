fewest_coins(Coins, Target, Change) :-
    make_change(Target, Coins, [], Change).

make_change(Val, Coins, Wallet, Change) :-
    (   Val=:=0
    ->  sort(0, @=<, Wallet, Change)
    ;   include(choose(Val, Coins), Coins, Chosen),
        (   max_list(Chosen, Coin)
        ;   min_list(Coins, Coin), Coin=<Val
        ), !,
        append(Wallet, [Coin], Ching),
        make_change(Val-Coin, Coins, Ching, Change)
    ).

choose(Val, Coins, Coin) :-
    Coin=<Val,
    Diff is Val-Coin,
    (   Diff=:=0
    ;   \+ include({Diff}/[C]>>(C>1, 0 is Diff mod C), Coins, [])
    ).
