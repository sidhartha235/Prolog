% Now write a 3-place predicate combine2 which takes three lists as arguments and combines the elements of the first two lists into the third as follows:

% ?- combine2([a,b,c],[1,2,3],X).
% X = [[a,1],[b,2],[c,3]]

% ?- combine2([f,b,yip,yup],[glu,gla,gli,glo],Result).
% Result = [[f,glu],[b,gla],[yip,gli],[yup,glo]]

combine2([], X, X).
combine2(X, [], X).
combine2([H1 | T1], [H2 | T2], [[H1, H2] | T]) :- combine2(T1, T2, T), !.