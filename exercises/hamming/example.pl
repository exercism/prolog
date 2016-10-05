
hamming_distance(Str1, Str2, Dist):-
    string_length(Str1, Length),
    string_length(Str2, Length),
    string_chars(Str1, List1),
    string_chars(Str2, List2),
    hamming_distance_cmp(List1, List2, Dist).

hamming_distance_cmp([], [], Dist):- Dist is 0.
hamming_distance_cmp([H1|T1], [H2|T2], Dist):-
    (
        H1 == H2, hamming_distance_cmp(T1, T2, Dist), !;
        hamming_distance_cmp(T1, T2, Next),
        Dist is Next + 1
    ).
