deleteAcc(_, A, [], A).
deleteAcc(X, A, [X | T], Result) :- deleteAcc(X, A, T, Result).
deleteAcc(X, A, [H | T], Result) :- deleteAcc(X, [H | A], T, Result).

delete(X, List, Result) :- deleteAcc(X, [], List, ReverseResult), reverse(ReverseResult, Result), !.