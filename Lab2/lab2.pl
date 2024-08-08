father(arun, bobby).
father(bobby, charan).
father(charan, danny).
father(danny, eshwar).

grandfather(X, Z) :- father(X, Y), father(Y, Z).