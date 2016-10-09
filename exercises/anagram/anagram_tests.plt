:- begin_tests(anagram).

    test(no_matches) :-
        anagram("diaper", [ "hello", "world", "zombies", "pants"], []).

    test(detects_simple_anagram) :-
        anagram("ant", ["tan", "stand", "at"], ["tan"]).

    test(does_not_detect_false_positives) :-
        anagram("galea", ["eagle"], []).

    test(detects_multiple_anagrams) :-
        anagram("master", ["stream", "pigeon", "maters"], ["stream", "maters"]).

    test(does_not_detect_anagram_subsets) :-
        anagram("good", ["dog", "goody"], []).

    test(detects_anagram) :-
        anagram("listen", ["enlists", "google", "inlets", "banana"], ["inlets"]).

    test(detects_multiple_anagrams) :-
        anagram("allergy", ["gallery", "ballerina", "regally", "clergy", "largely", "leading"], ["gallery", "regally", "largely"]).

    test(does_not_detect_identical_words) :-
        anagram("corn", ["corn", "dark", "Corn", "rank", "CORN", "cron", "park"], ["cron"]).

    test(does_not_detect_nonanagrams_with_identical_checksum) :-
        anagram("mass", ["last"], []).

    test(detects_anagrams_case_insensitively) :-
        anagram("Orchestra", ["cashregister", "Carthorse", "radishes"], ["Carthorse"]).

    test(detects_anagrams_using_case_insensitive_subject) :-
        anagram("Orchestra", ["cashregister", "carthorse", "radishes"], ["carthorse"]).

    test(detects_anagrams_using_case_insensitive_possible_matches) :-
        anagram("orchestra", ["cashregister", "Carthorse", "radishes"], ["Carthorse"]).

    test(does_not_detect_a_word_as_its_own_anagram) :-
        anagram("banana", ["Banana"], []).

    test(does_not_detect_a_anagram_if_the_original_word_is_repeated) :-
        anagram("go", ["go Go GO"], []).

    test(anagrams_must_use_all_letters_exactly_once) :-
        anagram("tapper", ["patter"], []).

    test(detects_unicode_anagrams) :-
        anagram("ΑΒΓ", ["ΒΓΑ", "ΒΓΔ", "γβα"], ["ΒΓΑ", "γβα"]).

    test(eliminates_misleading_unicode_anagrams) :-
        anagram("ΑΒΓ", ["ABΓ"], []).

    test(capital_word_is_not_own_anagram) :-
        anagram("BANANA", ["Banana"], []).

:- end_tests(anagram).
