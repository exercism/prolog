paired([], []) :- !.
paired(['['|Chars], Opened) :- paired(Chars, ['['|Opened]).
paired([']'|Chars], ['['|Opened]) :- paired(Chars, Opened).
paired(['('|Chars], Opened) :- paired(Chars, ['('|Opened]).
paired([')'|Chars], ['('|Opened]) :- paired(Chars, Opened).
paired(['{'|Chars], Opened) :- paired(Chars, ['{'|Opened]).
paired(['}'|Chars], ['{'|Opened]) :- paired(Chars, Opened).
% paired([_|Chars], Opened) :- paired(Chars, Opened).

paired(String) :-
    string_chars(String, Chars),    
    paired(Chars, Opened),
    !.
