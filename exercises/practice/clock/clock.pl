:- use_module(library(clpfd)).

create_clock(Hours, Minutes, Clock) :-
    NormalizedMinutes #= (Hours * 60 + Minutes) mod 1440,
    Clock = clock(NormalizedMinutes).

display(Clock, Time) :-
    Clock = clock(NormalizedMinutes),
    Hours #= NormalizedMinutes // 60,
    Minutes #= NormalizedMinutes mod 60,
    format(string(Time), "~`0t-d~2+ ~`0t-d~2+", [Hours, Minutes]).

add_minutes(Clock, Minutes, NewClock) :-
    Clock = clock(NormalizedMinutes),
    NewMinutes #= NormalizedMinutes + Minutes,
    create_clock(0, NewMinutes, NewClock).

subtract_minutes(Clock, Minutes, NewClock) :-
    add_minutes(Clock, -Minutes, NewClock).
