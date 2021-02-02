square(1, 1) :- !.
square(SquareNumber, Value) :-
    SquareNumber > 1, not(SquareNumber > 64),
    NextSquare is SquareNumber - 1,
    square(NextSquare, NewValue),
    Value is 2 * NewValue,
    !.

total(Total) :- total(Total, 64).

total(0, 0) :- !.
total(Total, Square) :-
    NextSquare is Square - 1,
    total(NextTotal, NextSquare),
    square(Square, SquareValue),
    Total is NextTotal + SquareValue.
    
