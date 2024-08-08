sumOfDigits(0, 0).
sumOfDigits(N, Result) :- N >= 0,
                          N1 is N mod 10,
                          N2 is N // 10,
                          sumOfDigits(N2, Result1),
                          Result is N1 + Result1,
                          !.