rail_indexes(_, _, [], _, _) :- !.
rail_indexes(Rails, Length, [Rail|Indexes], Rail, down) :-
    NewRail is Rail - 1,
    rail_indexes(Rails, Length, Indexes, NewRail, up), !.
rail_indexes(Rails, Length, [1|Indexes], 1, up) :-
    NewRail is Rail + 1,
    rail_indexes(Rails, Length, Indexes, NewRail, down), !.
rail_indexes(Rails, Length, [Rail|Indexes], Rail, up) :-
    NewRail is Rail - 1,
    rail_indexes(Rails, Length, Indexes, NewRail, up), !.
rail_indexes(Rails, Length, [Rail|Indexes], Rail, down) :-
    NewRail is Rail + 1,
    rail_indexes(Rails, Length, Indexes, NewRail, down), !.

rail_indexes(Rails, Length, Indexes) :-
    rail_indexes(Rails, Length, Indexes, 1, down).

encode(Plaintext, Rails, Ciphertext) :-
    string_chars(Plaintext, PlaintextChars),
    string_chars(Ciphertext, CiphertextChars),
    same_length(PlaintextChars, CiphertextChars).

decode(Ciphertext, Rails, Plaintext).


