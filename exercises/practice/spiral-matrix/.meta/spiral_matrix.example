rest([_|X], X).

transpose(XS, [])   :- member([], XS), !.
transpose(M, [X|T]) :- maplist(nth0(0), M, X), maplist(rest, M, M1), transpose(M1, T).

spiral_H(M, N, S, Rows) :-
  succ(M1, M),
  numlist(0, M1, Ms),
  maplist(plus(S), Ms, Row),
  (1 =:= N -> Rows = [Row]
            ; succ(N1, N),
              plus(S, M, SM),
              spiral_H(N1, M, SM, Rows1),
              transpose(Rows1, Transposed),
              maplist(reverse, Transposed, Reversed),
              Rows = [Row|Reversed]).

spiral(0, []) :- !.
spiral(N, XS) :- spiral_H(N, N, 1, XS).
