swapfl([], []).
swapfl([First1|Tail1], [First2|Tail2]):-
	reverse(Tail1, [Last1|Rest1]),
	reverse(Tail2, [Last2|Rest2]),
	First1 = Last2,
	Last1 = First2,
	Rest1 = Rest2.