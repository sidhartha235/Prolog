directTrain(forbach,saarbruecken).
directTrain(freyming,forbach).
directTrain(fahlquemont,stAvold).
directTrain(stAvold,forbach).
directTrain(saarbruecken,dudweiler).
directTrain(metz,fahlquemont).
directTrain(nancy,metz).

trainBetween(X, X). /* assuming train between same station is true */
trainBetween(X, Y) :- directTrain(X, Z), trainBetween(Z, Y), !; trainBetween(Y, X).
/* trainBetween(X, Y) :- directTrain(Y, Z), trainBetween(Z, X). */