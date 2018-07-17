match(Pieces, [(A,B)|T], [New,(A,B)|T], NewPieces) :-
  member((X,A), Pieces) -> New = (X,A), selectchk((X,A), Pieces, NewPieces) ;
  member((A,X), Pieces) -> New = (X,A), selectchk((A,X), Pieces, NewPieces).

solve_([], Chain, Chain).
solve_(Pieces, Chain, RC) :-
  match(Pieces, Chain, NC, NP),
  solve_(NP, NC, RC).

solve([], []).
solve(Pieces, Chain) :-
  member((A,B), Pieces),
  select((A,B), Pieces, NP), 
  (solve_(NP, [(B,A)], Chain) ; solve_(NP, [(A,B)], Chain)),
  last(Chain, (_, E)), Chain = [(E, _)|_].

can_chain([]) :- !.
can_chain(XS) :- solve(XS, _), !.
