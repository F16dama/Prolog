% Author:
% Date: 4/21/2018

natSym(o).
natSym(s(X)).

connection(a,b).
connection(a,c).
connection(a,d).
connection(a,e).

connection(b,c).
connection(b,d).
connection(b,e).

connection(c,d).

connection(e,c).
connection(e,d).

weg(X,Y) :- connection(X,Y).
weg(X,Y) :- X ==Y.



wegLaenge(X,Y,s(L)) :-   weg(X,K), weg(K,Y) , wegLaenge(X,Y, L).