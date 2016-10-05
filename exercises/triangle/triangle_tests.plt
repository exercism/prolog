:- begin_tests(triangle).

    test(equilateral_triangle_has_all_sides_equal) :-
        triangle(2, 2, 2, "equilateral").

    test(larger_equilateral_triangle) :-
        triangle(10, 10, 10, "equilateral").

    test(isosceles_triangle_with_last_two_sides_equal) :-
        triangle(3, 4, 4, "isosceles").

    test(isosceles_triangle_with_first_two_sides_equal) :-
        triangle(4, 4, 3, "isosceles").

    test(isosceles_triangle_with_first_and_last_sides_equal) :-
        triangle(4, 3, 4, "isosceles").

    test(isosceles_triangle_with_unequal_side_larger_than_equal_sides) :-
        triangle(4, 7, 4, "isosceles").

    test(scalene_triangle_has_no_equal_sides) :-
        triangle(3, 4, 5, "scalene").

    test(a2_equals_b_plus_c_isnt_always_equilateral) :-
        triangle(5, 4, 6, "scalene").

    test(larger_scalene_triangle) :-
        triangle(10, 11, 12, "scalene").

    test(scalene_triangle_with_sides_in_descending_order) :-
        triangle(5, 4, 2, "scalene").

    test(small_scalene_triangle_with_floating_point_values) :-
        triangle((0.4), (0.6), (0.3), "scalene").

    test(a_triangle_violating_the_triangle_inequality_is_illegal, [fail]) :-
        triangle(7, 3, 2, _).

    test(two_sides_equal_but_violates_triangle_inequality, [fail]) :-
        triangle(1, 1, 3, _).

    test(triangles_with_all_sides_zero_are_illegal, [fail]) :-
        triangle(0, 0, 0, _).

:- end_tests(triangle).
