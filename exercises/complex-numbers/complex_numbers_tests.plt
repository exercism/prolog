pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(real_part).

    test(real_part_of_a_purely_real_number, condition(true)) :-
        real((1,0),R), R =:= 1.

    test(real_part_of_a_purely_imaginary_number, condition(pending)) :-
        real((0,1),R), R =:= 0.

    test(real_part_of_a_number_with_real_and_imaginary_part, condition(pending)) :-
        real((1,2),R), R =:= 1.

:- end_tests(real_part).


:- begin_tests(imaginary_part).

    test(imaginary_part_of_a_purely_real_number, condition(pending)) :-
        imaginary((1,0),R), R =:= 0.

    test(imaginary_part_of_a_purely_imaginary_number, condition(pending)) :-
        imaginary((0,1),R), R =:= 1.

    test(imaginary_part_of_a_number_with_real_and_imaginary_part, condition(pending)) :-
        imaginary((1,2),R), R =:= 2.

:- end_tests(imaginary_part).


:- begin_tests(addition).

    test(add_purely_real_numbers, condition(pending)) :-
        add((1,0), (2,0), (X,Y)), X =:= 3, Y =:= 0.

    test(add_purely_imaginary_numbers, condition(pending)) :-
        add((0,1), (0,2), (X,Y)), X =:= 0, Y =:= 3.

    test(add_numbers_with_real_and_imaginary_part, condition(pending)) :-
        add((1,2), (3,4), (X,Y)), X =:= 4, Y =:= 6.

:- end_tests(addition).


:- begin_tests(subtraction).

    test(subtract_purely_real_numbers, condition(pending)) :-
        sub((1,0), (2,0), (X,Y)), X =:= -1, Y =:= 0.

    test(subtract_purely_imaginary_numbers, condition(pending)) :-
        sub((0,1), (0,2), (X,Y)), X =:= 0, Y =:= -1.

    test(subtract_numbers_with_real_and_imaginary_part, condition(pending)) :-
        sub((1,2), (3,4), (X,Y)), X =:= -2, Y =:= -2.

:- end_tests(subtraction).


:- begin_tests(multiplication).

    test(multiply_purely_real_numbers, condition(pending)) :-
        mul((1,0), (2,0), (X,Y)), X =:= 2, Y =:= 0.

    test(multiply_purely_imaginary_numbers, condition(pending)) :-
        mul((0,1), (0,2), (X,Y)), X =:= -2, Y =:= 0.

    test(multiply_numbers_with_real_and_imaginary_part, condition(pending)) :-
        mul((1,2), (3,4), (X,Y)), X =:= -5, Y =:= 10.

:- end_tests(multiplication).


:- begin_tests(division).

    test(divide_purely_real_numbers, condition(pending)) :-
        div((1,0), (2,0), (X,Y)), X =:= 0.5, Y =:= 0.

    test(divide_purely_imaginary_numbers, condition(pending)) :-
        div((0,1), (0,2), (X,Y)), X =:= 0.5, Y =:= 0.

    test(divide_numbers_with_real_and_imaginary_part, condition(pending)) :-
        div((1,2), (3,4), (X,Y)), X =:= 0.44, Y =:= 0.08.

:- end_tests(division).


:- begin_tests(absolute_value).

    test(absolute_value_of_a_positive_purely_real_number, condition(pending)) :-
        abs((5,0), R), R =:= 5.

    test(absolute_value_of_a_negative_purely_real_number, condition(pending)) :-
        abs((-5,0), R), R =:= 5.

    test(absolute_value_of_a_positive_purely_imaginary_number, condition(pending)) :-
        abs((0,5), R), R =:= 5.

    test(absolute_value_of_a_negative_purely_real_number, condition(pending)) :-
        abs((0,-5), R), R =:= 5.

    test(absolute_value_of_a_number_with_real_and_imaginary_part, condition(pending)) :-
        abs((3,4), R), R =:= 5.

    test(absolute_value_of_larger_number_with_real_and_imaginary_part, condition(pending)) :- 
        abs((68, 285), R), R =:= 293.

:- end_tests(absolute_value).


:- begin_tests(conjugate).

    test(conjugate_a_purely_real_number, condition(pending)) :-
        conjugate((5,0), (X,Y)), X =:= 5, Y =:= 0.

    test(conjugate_a_purely_imaginary_number, condition(pending)) :-
        conjugate((0,5), (X,Y)), X =:= 0, Y =:= -5 .

    test(conjugate_a_number_with_real_and_imaginary_part, condition(pending)) :-
        conjugate((1,1), (X,Y)), X =:= 1, Y =:= -1.

:- end_tests(conjugate).
