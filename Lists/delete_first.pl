deleteFirst(X, [X | T], T).

deleteFirst(X, [H | T], [H | Result]) :- deleteFirst(X, T, Result), !.

deleteFirst(_, [], []).