:- use_module(library(clpfd)).

move(state(one(0, CapOne), Two), state(one(CapOne, CapOne), Two)) :- !.
move(state(One, two(CapTwo, CapTwo)), state(One, two(0, CapTwo))) :- !.
move(state(one(FillOne, CapOne), two(FillTwo, CapTwo)), state(one(NewFillOne, CapOne), two(NewFillTwo, CapTwo))) :-
    FillOne #> 0,
    Fill #= min(FillOne, CapTwo - FillTwo),
    NewFillOne #= FillOne - Fill,
    NewFillTwo #= FillTwo + Fill, !.

solve(Goal, StartBucket, State, State, Moves, Measurement) :- 
    State = state(one(Goal, _), two(FillTwo, _)), 
    (StartBucket == one -> GoalBucket = one; GoalBucket = two),
    Measurement = measurement(moves(Moves), goalBucket(GoalBucket), otherBucket(FillTwo)),
    !.
solve(Goal, StartBucket, State, State, Moves, Measurement) :-    
    State = state(one(FillOne, _), two(Goal, _)), 
    (StartBucket == one -> GoalBucket = two; GoalBucket = one),
    Measurement = measurement(moves(Moves), goalBucket(GoalBucket), otherBucket(FillOne)),
    !.

solve(Goal, StartBucket, State, Stop, Moves, Measurement) :-
    move(State, Next),
    NewMoves is Moves + 1,
    solve(Goal, StartBucket, Next, Stop, NewMoves, Measurement), !.

initial_state(FirstCapacity, SecondCapacity, one, InitialState) :-
    InitialState = state(one(0, FirstCapacity), two(0, SecondCapacity)).
initial_state(FirstCapacity, SecondCapacity, two, InitialState) :-
    InitialState = state(one(0, SecondCapacity), two(0, FirstCapacity)).

measure(Goal, FirstCapacity, SecondCapacity, StartBucket, Measurement) :-
    (Goal #=< FirstCapacity; Goal #=< SecondCapacity),
    initial_state(FirstCapacity, SecondCapacity, StartBucket, InitialState),
    solve(Goal, StartBucket, InitialState, Stop, 0, Measurement),
    !.
