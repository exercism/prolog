% returns true if X is at most, 1 time in L.
atMost1(X, XS) :-
 findall(E, (member(E, XS), X = E), O), length(O, LO), LO =< 1.

% returns true if every letter of the engilsh alphabet is at most 1 time in S.
isogram(S) :-
  atom_codes("abcdefghijklmnopqrstuvwxyz", ABC),
  string_lower(S, LowerS),
  atom_codes(LowerS, NormalizedS),
  forall(member(L, ABC), atMost1(L, NormalizedS)).
