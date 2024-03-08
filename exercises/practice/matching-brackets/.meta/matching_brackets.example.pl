:- use_module(library(dcg/basics)).

parentheses --> "(", balanced, ")".
brackets    --> "[", balanced, "]".
braces      --> "{", balanced, "}".

balanced --> (parentheses | brackets | braces), balanced.
balanced --> non_bracket, balanced.
balanced --> [].

non_bracket --> [C], { string_codes("()[]{}", Codes), \+ member(C, Codes) }.

paired(String) :-
    string_codes(String, Codes),
    phrase(balanced, Codes),
    !.