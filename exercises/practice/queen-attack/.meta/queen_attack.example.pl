create((X,Y)) :- X >= 0, Y >= 0, 7 >= X, 7 >= Y.

column((_, Y), (_, V)) :- Y =:= V.

row((X, _), (U, _)):- X =:= U.

diagonal((X, Y), (U, V)) :-  (X-Y) =:= (U-V), !; (X+Y) =:= (U+V).

attack((X, Y), (U, V)) :-
  column((X, Y), (U, V)), !;
  row((X, Y), (U, V)), !;
  diagonal((X, Y), (U, V)).
