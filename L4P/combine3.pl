% Finally, write a 3-place predicate combine3 which takes three lists as arguments and combines the elements of the first two lists into the third as follows:

% ?- combine3([a,b,c],[1,2,3],X).
% X = [j(a,1),j(b,2),j(c,3)]

% ?- combine3([f,b,yip,yup],[glu,gla,gli,glo],R).
% R = [j(f,glu),j(b,gla),j(yip,gli),j(yup,glo)]

combine3([], X, X).
combine3(X, [], X).
combine3([H1 | T1], [H2 | T2], [j(H1, H2) | T]) :- combine3(T1, T2, T), !.