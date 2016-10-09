rna_transcription(Rna, Dna) :-
    string_chars(Rna, RnaList),
    rna_transcription_list(RnaList, DnaList),
    string_chars(Dna, DnaList).

rna_transcription_list([], []) :- !.
rna_transcription_list([RnaBase | Rna], [DnaBase | Dna]) :-
    (RnaBase = 'C' ->
        DnaBase = 'G';
     RnaBase = 'G' ->
        DnaBase = 'C';
     RnaBase = 'T' ->
        DnaBase = 'A';
     RnaBase = 'A' ->
        DnaBase = 'U'
    ),
    rna_transcription_list(Rna, Dna).

