% turns a string into a sorted list of characters
format_word(Word, Formatted) :-
    string_lower(Word, LowercaseWord),
    string_chars(LowercaseWord, CharList),
    sort(CharList, Formatted).

anagram(Word, Options, Matching) :-
    format_word(Word, FormattedWord),
    anagram(Word, Options, Matching, FormattedWord).

anagram(_, [], [], _) :- !.
anagram(Word, [Option|Options], Matching, CharList) :-
    Word \== Option,
    format_word(Option, FormattedOption),
    equal_lists(CharList, FormattedOption),
    anagram(Word, Options, NextMatching, CharList),
    Matching = [Option | NextMatching],
    !.
anagram(Word, [_ | Options], Matching, CharList) :-
    anagram(Word, Options, Matching, CharList).

equal_lists([], []).
equal_lists([H|T1], [H|T2]) :-
    equal_lists(T1, T2).
