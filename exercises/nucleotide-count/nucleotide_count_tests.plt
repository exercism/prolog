:- begin_tests(nucleotide_counting).

    test(empty_dna_strand_has_no_adenosine) :-
        nucleotide_count('', [('A', 0) | _ ]), !.

    test(repetitive_cytidine_gets_counted) :-
        nucleotide_count('CCCCC', Counts),
        member(('C', 5), Counts), !.

    test(counts_only_thymidine) :-
        nucleotide_count('GGGGGTAACCCGG', Counts),
        member(('T', 1), Counts), !.

    test(counts_only_thymidine) :-
        nucleotide_count(
            'AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC',
            [ ('A' ,20), ('C' , 12), ('G' , 17), ('T', 21) ]), !.

    test(fails_when_not_dns, [fail]) :-
        nucleotide_count('JOHNNYAPPLESEED', _), !.

:- end_tests(nucleotide_counting).
