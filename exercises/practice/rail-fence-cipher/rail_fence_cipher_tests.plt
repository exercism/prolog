pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(rail_fence_cipher).

    test(encode_with_two_rails, condition(true)) :-
        encode("XOXOXOXOXOXOXOXOXO", 2, Encoded),
        Encoded == "XXXXXXXXXOOOOOOOOO".

    test(encode_with_three_rails, condition(pending)) :-    
        encode("WEAREDISCOVEREDFLEEATONCE", 3, Encoded),
        Encoded == "WECRLTEERDSOEEFEAOCAIVDEN".

    test(encode_with_ending_in_the_middle, condition(pending)) :-
        encode("EXERCISES", 4, Encoded),
        Encoded == "ESXIEECSR".

    test(decode_with_three_rails, condition(pending)) :-
        decode("TEITELHDVLSNHDTISEIIEA", 3, Decoded),
        Decoded == "THEDEVILISINTHEDETAILS".

    test(decode_with_five_rails, condition(pending)) :-
        decode("EIEXMSMESAORIWSCE", 5, Decoded),
        Decoded == "EXERCISMISAWESOME".

    test(decode_with_six_rails, condition(pending)) :-
        decode("133714114238148966225439541018335470986172518171757571896261", 6, Decoded),
        Decoded == "112358132134558914423337761098715972584418167651094617711286".

:- end_tests(rail_fence_cipher).
