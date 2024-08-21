member(X,[X|_]).
member(X,[_|T]) :- member(X,T).

accSet([],L,L).

accSet([X|Inlist], AccList, Outlist) :-
    not(member(X,AccList)),
    accSet(Inlist,[X|AccList],Outlist).

accSet([X|Inlist], AccList, Outlist) :-
    member(X,AccList),
    accSet(Inlist,AccList,Outlist).

set(Inlist,Outlist) :-
    reverse(TempOutlist, Outlist),
    accSet(Inlist,[],TempOutlist), !.
