pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(scrabble_score).

    test(lowercase_letter, condition(true)) :-
        score("a", 1).

    test(uppercase_letter, condition(pending)) :-
        score("A", 1).

    test(valuable_letter, condition(pending)) :-
        score("f", 4).

    test(short_word, condition(pending)) :-
        score("at", 2).

    test(short_valuable_word, condition(pending)) :-
        score("zoo", 12).

    test(medium_word, condition(pending)) :-
        score("street", 6).

    test(medium_valuable_word, condition(pending)) :-
        score("quirky", 22).

    test(long_mixed_case_word, condition(pending)) :-
        score("OxyphenButazone", 41).

    test(english_like_word, condition(pending)) :-
        score("pinata", 8).

    test(empty_input, condition(pending)) :-
        score("", 0).

    test(entire_alphabet_available, condition(pending)) :-
        score("abcdefghijklmnopqrstuvwxyz", 87).

:- end_tests(scrabble_score).
