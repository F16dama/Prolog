% Author:
% Date: 4/19/2018

natSym(o).
natSym(s(X)).

lessequ(o, X) :- natSym(X).
lessequ(s(X),s(Y)) :- lessequ(X,Y), natSym(X), natSym(Y).

add(o,X,X) :- natSym(X).
add(s(X),Y,s(R)) :- add(X,Y,R), natSym(Y), natSym(R).

%sub durch add(wert, ergebnis, wert2)
%halbieren durch add(Z,Z, zahlensymbol).

mult(X,o,o) :- natSym(X).
mult(X,s(Y),R) :-   mult(X,Y, Zwischen), add(Zwischen, X, R), natSym(Y), natSym(R).


eqZero(X):- add(X, s(o),s(o)).
neqZero(X):- not(eqZero(X)).

less(X,s(Y)):- less(o,Y) .
square(X,Y) :- mult(X,X,Y).

%eqZero(X) :- X == o, natSym(X).
%neqZero(X) :- X \= o, natSym(X).