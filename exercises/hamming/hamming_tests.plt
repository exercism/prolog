:- begin_tests(hamming).

    test(identical_strands) :-
        hamming_distance("A", "A", 0).

    test(long_identical_strands) :-
        hamming_distance("GGACTGA", "GGACTGA", 0).

    test(complete_distance_in_single_nucleotide_strands) :-
        hamming_distance("A", "G", 1).

    test(complete_distance_in_small_strands) :-
        hamming_distance("AG", "CT", 2).

    test(small_distance_in_small_strands) :-
        hamming_distance("AT", "CT", 1).

    test(small_distance) :-
        hamming_distance("GGACG", "GGTCG", 1).

    test(small_distance_in_long_strands) :-
        hamming_distance("ACCAGGG", "ACTATGG", 2).

    test(nonunique_character_in_first_strand) :-
        hamming_distance("AGA", "AGG", 1).

    test(nonunique_character_in_second_strand) :-
        hamming_distance("AGG", "AGA", 1).

    test(same_nucleotides_in_different_positions) :-
        hamming_distance("TAG", "GAT", 2).

    test(large_distance) :-
        hamming_distance("GATACA", "GCATAA", 4).

    test(large_distance_in_offbyone_strand) :-
        hamming_distance("GGACGGATTCTG", "AGGACGGATTCT", 9).

    test(empty_strands) :-
        hamming_distance("", "", 0).

    test(disallow_first_strand_longer, [fail]) :-
        hamming_distance("AATG", "AAA", _).

    test(disallow_second_strand_longer, [fail]) :-
        hamming_distance("ATA", "AGTG", _).

:- end_tests(hamming).
