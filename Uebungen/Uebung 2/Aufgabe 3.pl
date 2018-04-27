% Author:
% Date: 4/26/2018

natSym(o).
natSym(s(X)).

add(o ,X,X) :- natSym(X).
add(s(X),Y,s(R)) :- add(X,Y,R),natSym(X), natSym(Y),natSym(R).

mult(X, o, o).
mult(X, s(Y), R):- mult(X,Y, Zwischen), add(Zwischen, X, R).

exp(X, o, s(o)).
exp(X,s(Y),R) :-   exp(X,Y,K) ,mult(K, X,R).