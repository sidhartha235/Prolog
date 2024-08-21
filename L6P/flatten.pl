is_list([]).
is_list([_ | _]).

accFlatten([], L, L).

accFlatten(X, AccList, [X | AccList]) :- not(is_list(X)).

accFlatten([H | T], AccList, Flat) :- accFlatten(T, AccList, NewAccList), accFlatten(H, NewAccList, Flat).

flatten(List, Flat) :- accFlatten(List, [], Flat), !.
