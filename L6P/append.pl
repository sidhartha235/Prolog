% append([],L,L).
% append([H|T],L2,[H|L3]) :- append(T,L2,L3).

member(X, List) :- append(_,[X|_],List), !.