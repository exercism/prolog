pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(protein_translation).

    test(methionine_rna_sequence, condition(true)) :-
        translate("AUG", Proteins),
        Proteins == ["Methionine"].

    test(phenylalanine_rna_sequence_1, condition(pending)) :-
        translate("UUU", Proteins),
        Proteins == ["Phenylalanine"].

    test(phenylalanine_rna_sequence_2, condition(pending)) :-
        translate("UUC", Proteins),
        Proteins == ["Phenylalanine"].

    test(leucine_rna_sequence_1, condition(pending)) :-
        translate("UUA", Proteins),
        Proteins == ["Leucine"].

    test(leucine_rna_sequence_2, condition(pending)) :-
        translate("UUG", Proteins),
        Proteins == ["Leucine"].

    test(serine_rna_sequence_1, condition(pending)) :-
        translate("UCU", Proteins),
        Proteins == ["Serine"].

    test(serine_rna_sequence_2, condition(pending)) :-
        translate("UCC", Proteins),
        Proteins == ["Serine"].

    test(serine_rna_sequence_3, condition(pending)) :-
        translate("UCA", Proteins),
        Proteins == ["Serine"].

    test(serine_rna_sequence_4, condition(pending)) :-
        translate("UCG", Proteins),
        Proteins == ["Serine"].

    test(tyrosine_rna_sequence_1, condition(pending)) :-
        translate("UAU", Proteins),
        Proteins == ["Tyrosine"].

    test(tyrosine_rna_sequence_2, condition(pending)) :-
        translate("UAC", Proteins),
        Proteins == ["Tyrosine"].

    test(cysteine_rna_sequence_1, condition(pending)) :-
        translate("UGU", Proteins),
        Proteins == ["Cysteine"].

    test(cysteine_rna_sequence_2, condition(pending)) :-
        translate("UGC", Proteins),
        Proteins == ["Cysteine"].

    test(tryptophan_rna_sequence, condition(pending)) :-
        translate("UGG", Proteins),
        Proteins == ["Tryptophan"].

    test(stop_codon_rna_sequence_1, condition(pending)) :-
        translate("UAA", Proteins),
        Proteins == [].

    test(stop_codon_rna_sequence_2, condition(pending)) :-
        translate("UAG", Proteins),
        Proteins == [].

    test(stop_codon_rna_sequence_3, condition(pending)) :-
        translate("UGA", Proteins),
        Proteins == [].

    test(sequence_of_two_protein_codons_translates_into_proteins, condition(pending)) :-
        translate("UUUUUU", Proteins),
        Proteins == ["Phenylalanine", "Phenylalanine"].

    test(sequence_of_two_different_protein_codons_translates_into_proteins, condition(pending)) :-
        translate("UUAUUG", Proteins),
        Proteins == ["Leucine", "Leucine"].

    test(translate_rna_strand_into_correct_protein_list, condition(pending)) :-
        translate("AUGUUUUGG", Proteins),
        Proteins == ["Methionine", "Phenylalanine", "Tryptophan"].

    test(translation_stops_if_stop_codon_at_beginning_of_sequence, condition(pending)) :-
        translate("UAGUGG", Proteins),
        Proteins == [].

    test(translation_stops_if_stop_codon_at_end_of_two_codon_sequence, condition(pending)) :-
        translate("UGGUAG", Proteins),
        Proteins == ["Tryptophan"].

    test(translation_stops_if_stop_codon_at_end_of_three_codon_sequence, condition(pending)) :-
        translate("AUGUUUUAA", Proteins),
        Proteins == ["Methionine", "Phenylalanine"].

    test(translation_stops_if_stop_codon_in_middle_of_three_codon_sequence, condition(pending)) :-
        translate("UGGUAGUGG", Proteins),
        Proteins == ["Tryptophan"].

    test(translation_stops_if_stop_codon_in_middle_of_six_codon_sequence, condition(pending)) :-
        translate("UGGUGUUAUUAAUGGUUU", Proteins),
        Proteins == ["Tryptophan", "Cysteine", "Tyrosine"].

:- end_tests(protein_translation).
