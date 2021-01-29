binary(Str, Dec) :-
    string_chars(Str, RevLst),
    reverse(RevLst, Lst),
    convert(Lst, Dec).

convert([], 0).
convert([Head|List], Dec) :-
    atom_number(Head, Val),
    (Val is 0, !; Val is 1),
    convert(List, NextDec),
    Dec is NextDec*2 + Val.
