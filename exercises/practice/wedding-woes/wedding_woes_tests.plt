pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(wedding_woes).

    test(gustavo_is_chatty, condition(true)) :-
        chatty(gustavo).

    test(valeria_is_chatty, condition(pending)) :-
        chatty(valeria).

    test(jaime_is_not_chatty, [fail, condition(pending)]) :-
        chatty(jaime).

    test(esteban_likes_malena, condition(pending)) :-
        likes(esteban, malena).

    test(malena_likes_esteban, condition(pending)) :-
        likes(malena, esteban).

    test(gustavo_likes_valeria, condition(pending)) :-
        likes(gustavo, valeria).

    test(valeria_does_not_like_gustavo, [fail, condition(pending)]) :-
        likes(valeria, gustavo).

    test(people_who_like_each_other_make_a_good_pairing, condition(pending)) :-
        pairing(malena, esteban).

    test(two_chatty_people_make_a_good_pairing, condition(pending)) :-
        pairing(gustavo, jaime).

    test(one_chatty_person_make_a_good_pairing_with_anyone, condition(pending)) :-
        pairing(valeria, jaime).

    test(people_who_dont_like_each_other_and_are_not_chatty_dont_make_a_good_pairing, [fail, condition(pending)]) :-
        pairing(rico, naran).

    test(valid_seating, condition(pending)) :-
        seating(esteban, malena, gustavo, jaime, valeria).

    test(invalid_seating, [fail, condition(pending)]) :-
        seating(esteban, jaime, gustavo, malena, valeria).

:- end_tests(wedding_woes).
