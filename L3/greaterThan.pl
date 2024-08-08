greaterThan(succ(X), X).
greaterThan(succ(X), Y) :- greaterThan(X, Y), !.