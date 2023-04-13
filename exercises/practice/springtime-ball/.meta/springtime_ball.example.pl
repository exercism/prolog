before(X, Y, [X|Rest]) :- member(Y, Rest), !.
before(X, Y, [Z|Rest]) :- Z \= X, before(X, Y, Rest).

dressed_as(Attendee, Costume) :- solve(Solution), member([Attendee, Costume, _, _], Solution), !.
dressed_as(Attendee, Costume) :- solve(Solution), member([_, _, Attendee, Costume], Solution), !.

solve(Solution) :-
    Solution = [[M1,C1,W1,D1], [M2,C2,W2,D2], [M3,C3,W3,D3], [M4,C4,W4,D4]], % 1
    permutation([M1,M2,M3,M4], [vince, nuhk, lou, rajat]),
    permutation([W1,W2,W3,W4], [tamou, nala, ann, celeste]),
    permutation([C1,C2,C3,C4], [batman, donald_duck, prince, bear]),
    permutation([D1,D2,D3,D4], [mermaid, cleopatra, cat, snow_white]),
    M3 = rajat, % 2, 3
    D3 = cat, % 2, 3
    (C1 = bear; C2 = bear), % 3
    M1 \= vince, % 4
    before([vince,_,_,_],[_,prince,_,_], Solution), % 4
    member([nuhk,donald_duck,WMermaid,mermaid], Solution), % 5
    WMermaid \= tamou, % 5
    before([lou,_,_,_],[_,_,nala,_], Solution), % 6
    before([lou,_,_,_],[_,_,tamou,_], Solution), % 6
    before([_,_,nala,_],[_,_,tamou,_], Solution), % 6
    before([_,CCleopatra,WCleopatra,cleopatra],[_,CAnn,ann,_], Solution), % 7
    CCleopatra \= batman, % 7
    CAnn \= batman, % 7
    before([_,_,celeste,_],[_,_,_,snow_white], Solution). % 8
 