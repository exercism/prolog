pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(matching_brackets).

    test(paired_square_brackets, condition(true)) :-
        paired("[]").

    test(empty_string, condition(pending)) :-
        paired("").

    test(unpaired_brackets, [fail, condition(pending)]) :-
        paired("[[").

    test(wrong_ordered_brackets, [fail, condition(pending)]) :-
        paired("}{").

    test(wrong_closing_bracket, [fail, condition(pending)]) :-
        paired("{]").

    test(paired_with_whitespace, condition(pending)) :-
        paired("{ }").

    test(partially_paired_brackets, [fail, condition(pending)]) :-
        paired("{[])").

    test(simple_nested_brackets, condition(pending)) :-
        paired("{[]}").

    test(several_paired_brackets, condition(pending)) :-
        paired("{}[]").

    test(paired_and_nested_brackets, condition(pending)) :-
        paired("([{}({}[])])").

    test(unopened_closing_brackets, [fail, condition(pending)]) :-
        paired("{[)][]}").

    test(unpaired_and_nested_brackets, [fail, condition(pending)]) :-
        paired("([{])").

    test(paired_and_wrong_nested_brackets, [fail, condition(pending)]) :-
        paired("[({]})").

    test(paired_and_wrong_nested_brackets_but_innermost_are_correct, [fail, condition(pending)]) :-
        paired("[({}])").

    test(paired_and_incomplete_brackets, [fail, condition(pending)]) :-
        paired("{}[").

    test(too_many_closing_brackets, [fail, condition(pending)]) :-
        paired("[]]").

    test(early_unexpected_brackets, [fail, condition(pending)]) :-
        paired(")()").

    test(early_mismatched_brackets, [fail, condition(pending)]) :-
        paired("{)()").

    test(math_expression, condition(pending)) :-
        paired("(((185 + 223.85) * 15) - 543)/2").

    test(complex_latex_expression, condition(pending)) :-
        paired("\\left(\\begin{array}{cc} \\frac{1}{3} & x\\\\ \\mathrm{e}^{x} &... x^2 \\end{array}\\right)").

:- end_tests(matching_brackets).
