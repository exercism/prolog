:- use_module(library(clpfd)).

base(_, [], Value, Value) :- !.
base(Base, [Digit|Digits], Acc, Value) :-
    MaxDigit #= Base - 1,
    Digit in 0..MaxDigit,
    NewAcc #= Acc * Base + Digit,
    base(Base, Digits, NewAcc, Value).

base(_, [0], 0) :- !.
base(Base, Digits, Value) :- base(Base, Digits, 0, Value).

rebase(InputBase, InputDigits, OutputBase, OutputDigits) :-
    InputBase #>= 2, OutputBase #>= 2,
    base(InputBase, InputDigits, Decimal),
    base(OutputBase, OutputDigits, Decimal).
