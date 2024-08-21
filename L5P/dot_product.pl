dot([], [], []).
dot([H1 | T1], [H2 | T2], [H3 | T3]) :- H3 is H1 * H2, dot(T1, T2, T3).