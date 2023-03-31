hamming_distance(Str1, Str2, Distance) :-
    string_length(Str1, Length),
    string_length(Str2, Length),
    string_chars(Str1, List1),
    string_chars(Str2, List2),
    hamming_distance_cmp(List1, List2, Distance).

hamming_distance_cmp([], [], 0) :- !.
hamming_distance_cmp([Char1|Chars1], [Char2|Chars2], Distance) :-
    hamming_distance_cmp(Chars1, Chars2, NextDistance),
    (Char1 == Char2 ->
        Distance is NextDistance
    ;
        Distance is NextDistance + 1
    ).
