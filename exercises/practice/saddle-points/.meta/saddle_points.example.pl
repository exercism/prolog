:- use_module(library(clpfd)).

saddle_point(Matrix, RowMaxes, ColMins, R, C) :-
    nth1(R, Matrix, Row),
    nth1(C, Row, Cell),
    nth1(R, RowMaxes, RowMax),
    nth1(C, ColMins, ColMin),
    Cell #>= RowMax, Cell #=< ColMin.

saddle_points(Matrix, SaddlePoints) :-
    transpose(Matrix, Transposed),
    maplist(max_list, Matrix, RowMaxes),
    maplist(min_list, Transposed, ColMins),
    length(RowMaxes, Rows),
    length(ColMins, Cols),
    findall((R, C),
            (
                between(1, Rows, R),
                between(1, Cols, C),
                saddle_point(Matrix, RowMaxes, ColMins, R, C)),
            SaddlePoints).
