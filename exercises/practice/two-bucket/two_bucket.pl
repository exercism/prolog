move((SizeX,SizeY),(X,Y),(Z,SizeY)) :- Z is X - (SizeY - Y), Z >= 0.
move((SizeX,SizeY),(X,Y),(Z,0)) :- Z is X + Y, Z =< SizeX.
move((SizeX,SizeY),(X,Y),(SizeX,Z)) :- Z is Y - (SizeX - X), Z >=0.
move((SizeX,SizeY),(X,Y),(0,Z)) :- Z is X + Y, Z =< SizeY.

move((SizeX,SizeY),(0,Y),(SizeX,Y)).
move((SizeX,SizeY),(X,0),(X,SizeY)).

move((SizeX,SizeY),(X,Y),(X,0)) :- Y > 0.
move((SizeX,SizeY),(X,Y),(0,Y)) :- X > 0.

shortest( LS, L ) :-
  length( L, _),
  member( L, LS), !.

measure(Goal,Sizes,State,Moves) :-
    findall(Xs, do_moves(Goal, Sizes,[(0,0)],Xs),Solutions),
    shortest(Solutions,[State|Path]),
    length(Path, Moves).

do_moves(Goal,Sizes,[State|T], [(X1,Goal),State|T])
    :- move(Sizes,State,(X1,Goal)), !.
    do_moves(Goal,Sizes,[State|T], [(Goal,Y1),State|T])
    :- move(Sizes,State,(Goal,Y1)), !.
do_moves(Goal, Sizes,[State|T],Xs) :-
    move(Sizes,State,NewState), 
    not(member(NewState,[State|T])),
    do_moves(Goal, Sizes,[NewState,State|T],Xs).

