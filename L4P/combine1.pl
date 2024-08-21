% Write a 3-place predicate combine1 which takes three lists as arguments and combines the elements of the first two lists into the third as follows:

% ?- combine1([a,b,c],[1,2,3],X).
% X = [a,1,b,2,c,3]

% ?- combine1([f,b,yip,yup],[glu,gla,gli,glo],Result).
% Result = [f,glu,b,gla,yip,gli,yup,glo]

combine1([], X, X).
combine1(X, [], X).
combine1([H1 | T1], [H2 | T2], [H1, H2 | T]) :- combine1(T1, T2, T), !.