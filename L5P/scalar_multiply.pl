scalarMult(_, [], []).
scalarMult(Scalar, [H | T], [MH | T2]) :- MH is Scalar * H, scalarMult(Scalar, T, T2), !.