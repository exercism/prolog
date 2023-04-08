before(X, Y, [X|Rest]) :- member(Y, Rest), !.
before(X, Y, [Z|Rest]) :- Z \= X, before(X, Y, Rest).

dressed_as(Attendee, Costume) :- solve(Solution), member([Attendee, Costume, _, _], Solution), !.
dressed_as(Attendee, Costume) :- solve(Solution), member([_, _, Attendee, Costume], Solution), !.

solve(Solution) :-
    Solution = [[M1,C1,W1,D1], [M2,C2,W2,D2], [M3,C3,W3,D3], [M4,C4,W4,D4]], % 1
    permutation([M1,M2,M3,M4], [vince, chuck, lou, matt]),
    permutation([W1,W2,W3,W4], [sue, mary, ann, tess]),
    permutation([C1,C2,C3,C4], [batman, donald_duck, prince, bear]),
    permutation([D1,D2,D3,D4], [witch, gipsy, cat, snow_white]),
    M3 = matt, % 2, 3
    D3 = cat, % 2, 3
    (C1 = bear; C2 = bear), % 3
    M1 \= vince, % 4
    before([vince,_,_,_],[_,prince,_,_], Solution), % 4
    member([chuck,donald_duck,WWitch,witch], Solution), % 5
    WWitch \= sue, % 5
    before([lou,_,_,_],[_,_,mary,_], Solution), % 6
    before([lou,_,_,_],[_,_,sue,_], Solution), % 6
    before([_,_,mary,_],[_,_,sue,_], Solution), % 6
    before([_,CGipsy,WGipsy,gipsy],[_,CAnn,ann,_], Solution), % 7
    CGipsy \= batman, % 7
    CAnn \= batman, % 7
    before([_,_,tess,_],[_,_,_,snow_white], Solution). % 8
 