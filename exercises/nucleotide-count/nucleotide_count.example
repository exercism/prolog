nucleotide_count(Strand, Counts) :-
    atom_chars(Strand, Nucleotides),
    count_nucleotides(Nucleotides, [('A', 0), ('C', 0), ('G', 0), ('T', 0)], Counts).

count_nucleotides([], Counts, Counts).
count_nucleotides([Nucleotide | Rest], Running, Counts) :-
    count_single_nucleotide(Nucleotide, Running, NewCounts),
    count_nucleotides(Rest, NewCounts, Counts).

count_single_nucleotide(Nucleotide, [(OtherNucleotide, OtherCount) | Rest], NewCounts) :-
    count_single_nucleotide(Nucleotide, Rest, RestCounts),
    append([(OtherNucleotide, OtherCount)], RestCounts, NewCounts).
count_single_nucleotide(Nucleotide, [(Nucleotide, Count) | Rest], NewCounts) :-
    NewCount is Count + 1,
    append([(Nucleotide, NewCount)], Rest, NewCounts).