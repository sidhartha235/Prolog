directlyIn(irina, natasha).
directlyIn(natasha, olga).
directlyIn(olga, katrina).

in(X, Y) :- directlyIn(X, Y).
in(X, Y) :- directlyIn(X, Z), in(Z, Y).
/* First condition in recursive definition should be related to termination condition. */