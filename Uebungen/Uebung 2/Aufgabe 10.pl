% Author:
% Date: 4/26/2018
natSym(o).
natSym(s(X)).

add(X,o,X):- natSym(X).
add(X,s(Y), s(R)):- add(X,Y,R), natSym(X) ,natSym(Y) ,natSym(R).

natList(list(X, nil)):- natSym(X).
natList(list(X,Rest)):- natSym(X), natList(Rest).



invList(list(o,nil)).
invList(list(s(X),Rest)):- invList(Rest).