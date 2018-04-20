% Author:
% Date: 4/19/2018

natSym(o).
natSymb(X).

lessequ(o, X) :- natSymb(X).
lessequ(s(X),s(Y)) :- lessequ(X,Y), natSymb(X), natSymb(Y).

add(o,X,X) .
add(s(X),Y,s(R)) :- add(X,Y,R).

