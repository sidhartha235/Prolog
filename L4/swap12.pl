% Write a predicate swap12(List1,List2) which checks whether List1 is identical to List2 , except that the first two elements are exchanged.

identical([H1 | T1], [H1 | T1]).
swap12([H1 | T1], [H21, H22 | T2]) :- identical([H1 | T1], [H22, H21 | T2]).

% Minimum of 2 elements have to be there in the input lists.