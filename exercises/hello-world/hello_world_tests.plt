:- begin_tests(hello_word).
    test(hello_world) :-
        hello_world('Hello World!').

    test(hello_world_fail) :-
        hello_world('Alice', 'Hello Alice!').

    test(hello_world_fail) :-
        hello_world('Bob', 'Hello Bob!').

:- end_tests(hello_word).
