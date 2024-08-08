/* is the element in the list */
list_member(X, [X | _]).
list_member(X, [_ | TAIL]) :- list_member(X, TAIL), !.

/* length of the list */
list_length([], 0).
list_length([_ | TAIL], N) :- list_length(TAIL, N1), N is N1 + 1.

/* append to a list */
list_append(X, LIST) :- Y = [X | LIST], write(Y).

/* append without duplicates */
list_append(A, T, T) :- list_member(A, T), !.
list_append(A, T, [A | T]).

/* concatenate lists */
list_concat([], X, X).
list_concat([X1 | X2], Y, Z) :- list_concat(X2, [X1 | Y], Z1), Z = Z1.

/* delete element from list */
list_delete(X, [X], []).
list_delete(X, [X | L1], [L1]).
list_delete(X, [_ | L1], L2) :- list_delete(X, L1, L2).