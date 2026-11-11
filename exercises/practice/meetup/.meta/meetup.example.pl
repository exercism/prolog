weekday_number('Monday', 1).
weekday_number('Tuesday', 2).
weekday_number('Wednesday', 3).
weekday_number('Thursday', 4).
weekday_number('Friday', 5).
weekday_number('Saturday', 6).
weekday_number('Sunday', 7).

month_day(Year, Month, Day) :-
    between(1, 31, Day),
    date_time_stamp(date(Year, Month, Day, 0, 0, 0, 0, -, -), Stamp),
    stamp_date_time(Stamp, date(Year, Month, Day, _, _, _, _, _, _), 0).

days(Year, Month, WeekDay, Dates) :-
    weekday_number(WeekDay, Number),
    findall(date(Year, Month, Day),
            ( month_day(Year, Month, Day),
              day_of_the_week(date(Year, Month, Day), Number) ),
            Dates).

nth1_day(Year, Month, WeekDay, Index, Date) :-
    days(Year, Month, WeekDay, Dates),
    nth1(Index, Dates, Date).

meetup(Year, Month, first, WeekDay, Date)  :- nth1_day(Year, Month, WeekDay, 1, Date), !.
meetup(Year, Month, second, WeekDay, Date) :- nth1_day(Year, Month, WeekDay, 2, Date), !.
meetup(Year, Month, third, WeekDay, Date)  :- nth1_day(Year, Month, WeekDay, 3, Date), !.
meetup(Year, Month, fourth, WeekDay, Date) :- nth1_day(Year, Month, WeekDay, 4, Date), !.

meetup(Year, Month, last, WeekDay, Date) :-
    days(Year, Month, WeekDay, Dates),
    last(Dates, Date), !.

meetup(Year, Month, teenth, WeekDay, Date) :-
    days(Year, Month, WeekDay, Dates),
    member(Date, Dates),
    Date = date(_, _, Day),
    Day >= 13,
    !.
