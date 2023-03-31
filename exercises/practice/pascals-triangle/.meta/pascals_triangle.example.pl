pascal(0, []) :- !.
pascal(X, P)  :-
  numlist(1, X, NL),
  maplist(pascalH, NL, P).

pascalH(1, [1])   :- !.
pascalH(N, [X|L]) :-
  succ(N1, N),
  pascalH(N1, [X|L1]),
  build([X|L1], L), !.

build([X],     [X]).
build([X,Y|Z], [H|R]) :-
  H is X+Y,
  build([Y|Z], R).
