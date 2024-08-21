% In the text we discussed the 3-place predicate accMax which returned the maximum of a list of integers. By changing the code slightly, turn this into a 3-place predicate accMin which returns the minimum of a list of integers.

accMin([H | T], A, Min) :- H < A, accMin(T, H, Min).
accMin([H | T], A, Min) :- H >= A, accMin(T, A, Min).
accMin([], A, A).

min(List, Min) :- List = [H | _], accMin(List, H, Min), !.