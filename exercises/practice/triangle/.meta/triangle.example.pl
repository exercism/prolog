triangle(Side, Side, Side, "equilateral") :-
    valid_triangle(Side, Side, Side), !.

triangle(SideEq, SideEq, OtherSide, "isosceles") :-
    valid_triangle(SideEq, SideEq, OtherSide), !.

triangle(SideEq, OtherSide, SideEq, "isosceles") :-
    valid_triangle(SideEq, SideEq, OtherSide), !.

triangle(OtherSide, SideEq, SideEq, "isosceles") :-
    valid_triangle(SideEq, SideEq, OtherSide), !.

triangle(Side1, Side2, Side3, "scalene") :-
    \+ triangle(Side1, Side2, Side3, "equilateral"),
    \+ triangle(Side1, Side2, Side3, "isosceles"),
    valid_triangle(Side1, Side2, Side3).

valid_triangle(Side1, Side2, Side3) :-
    Add23 is Side2 + Side3,
    Add12 is Side1 + Side2,
    Add13 is Side1 + Side3,
    not(Side1 > Add23),
    not(Side2 > Add13),
    not(Side3 > Add12),
    Side1 \== 0,
    Side2 \== 0,
    Side3 \== 0.
