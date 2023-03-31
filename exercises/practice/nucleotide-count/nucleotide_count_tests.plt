pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(nucleotide_counting).

    test(empty_dna_strand_has_no_adenosine, condition(true)) :-
        nucleotide_count('', Counts),
        member(('A', 0), Counts), !.

    test(repetitive_cytidine_gets_counted, condition(pending)) :-
        nucleotide_count('CCCCC', Counts),
        member(('C', 5), Counts), !.

    test(counts_only_thymidine, condition(pending)) :-
        nucleotide_count('GGGGGTAACCCGG', Counts),
        member(('T', 1), Counts), !.

    test(counts_only_thymidine, condition(pending)) :-
        nucleotide_count('AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC', Counts),
        member(('A', 20), Counts),
        member(('C', 12), Counts),
        member(('G', 17), Counts),
        member(('T', 21), Counts), !.

    test(fails_when_not_dns, [fail, condition(pending)]) :-
        nucleotide_count('JOHNNYAPPLESEED', _), !.

:- end_tests(nucleotide_counting).
