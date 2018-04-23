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

%weg(X,Y) :- connection(X,Y).
%weg(X,Y) :- X ==Y.
weg(X,X).
weg(X,Y):- weg(X,K), connection(K,Y).

%wegLaenge(X,X,list(X,nil), o).
%wegLaenge(X,Y,list(X,R), s(L)) :-   connection(X,K), wegLaenge(K,Y, R,L), natSym(L).

wegLaenge(X,X,o).

