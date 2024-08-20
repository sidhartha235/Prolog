% Write a predicate listtran(G,E) which translates a list of German number words to the corresponding list of English number words.

tran(eins,one).
tran(zwei,two).
tran(drei,three).
tran(vier,four).
tran(fuenf,five).
tran(sechs,six).
tran(sieben,seven).
tran(acht,eight).
tran(neun,nine).

listtran([], []).
listtran([GH | GT], [EH | ET]) :- tran(GH, EH), listtran(GT, ET).