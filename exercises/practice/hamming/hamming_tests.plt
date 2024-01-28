pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(hamming).

    test(identical_strands, [condition(true), set(Result == [0])]) :-
        hamming_distance("A", "A", Result).

    test(long_identical_strands, [condition(pending), set(Result == [0])]) :-
        hamming_distance("GGACTGA", "GGACTGA", Result).

    test(complete_distance_in_single_nucleotide_strands, [condition(pending), set(Result == [1])]) :-
        hamming_distance("A", "G", Result).

    test(complete_distance_in_small_strands, [condition(pending), set(Result == [2])]) :-
        hamming_distance("AG", "CT", Result).

    test(small_distance_in_small_strands, [condition(pending), set(Result == [1])]) :-
        hamming_distance("AT", "CT", Result).

    test(small_distance, [condition(pending), set(Result == [1])]) :-
        hamming_distance("GGACG", "GGTCG", Result).

    test(small_distance_in_long_strands, [condition(pending), set(Result == [2])]) :-
        hamming_distance("ACCAGGG", "ACTATGG", Result).

    test(nonunique_character_in_first_strand, [condition(pending), set(Result == [1])]) :-
        hamming_distance("AGA", "AGG", Result).

    test(nonunique_character_in_second_strand, [condition(pending), set(Result == [1])]) :-
        hamming_distance("AGG", "AGA", Result).

    test(same_nucleotides_in_different_positions, [condition(pending), set(Result == [2])]) :-
        hamming_distance("TAG", "GAT", Result).

    test(large_distance, [condition(pending), set(Result == [4])]) :-
        hamming_distance("GATACA", "GCATAA", Result).

    test(large_distance_in_offbyone_strand, [condition(pending), set(Result == [9])]) :-
        hamming_distance("GGACGGATTCTG", "AGGACGGATTCT", Result).

    test(empty_strands, [condition(pending), set(Result == [0])]) :-
        hamming_distance("", "", Result).

    test(disallow_first_strand_longer, [fail, condition(pending)]) :-
        hamming_distance("AATG", "AAA", _).

    test(disallow_second_strand_longer, [fail, condition(pending)]) :-
        hamming_distance("ATA", "AGTG", _).

:- end_tests(hamming).