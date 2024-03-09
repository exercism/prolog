pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(scrabble_score).

    test(lowercase_letter, condition(true)) :-
        score("a", Score), Score == 1.

    test(uppercase_letter, condition(pending)) :-
        score("A", Score), Score == 1.

    test(valuable_letter, condition(pending)) :-
        score("f", Score), Score == 4.

    test(short_word, condition(pending)) :-
        score("at", Score), Score == 2.

    test(short_valuable_word, condition(pending)) :-
        score("zoo", Score), Score == 12.

    test(medium_word, condition(pending)) :-
        score("street", Score), Score == 6.

    test(medium_valuable_word, condition(pending)) :-
        score("quirky", Score), Score == 22.

    test(long_mixed_case_word, condition(pending)) :-
        score("OxyphenButazone", Score), Score == 41.

    test(english_like_word, condition(pending)) :-
        score("pinata", Score), Score == 8.

    test(empty_input, condition(pending)) :-
        score("", Score), Score == 0.

    test(entire_alphabet_available, condition(pending)) :-
        score("abcdefghijklmnopqrstuvwxyz", Score), Score == 87.

:- end_tests(scrabble_score).
