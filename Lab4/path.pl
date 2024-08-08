edge(a, b).
edge(a, c).
edge(b, c).
edge(c, e).
edge(d, e).

path(X, Y, go(X, Y)) :- edge(X, Y).
path(X, Y, go(X, I, G)) :- edge(X, I), path(I, Y, G).