% List all permutations of a given list
/*
delete_item(X, [X|T], T).
delete_item(X, [H|T], [H|T2]):- delete_item(X, T, T2).
list_perm([], []).
list_perm(L,[X|P]):-delete_item(X,L,L1),list_perm(L1,P).
*/