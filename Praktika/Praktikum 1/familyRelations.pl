% Author:
% Date: 4/25/2018

% Author:
% Date: 4/20/2018
weiblich(margret).
weiblich(patricia).

maennlich(andreas).
maennlich(christian).
maennlich(heinz).

%stammbaum(tree(heinz, margret), list(andreas,list(patricia, list(christian, nil)))).

%kind(X, Y) :- stammbaum(tree(_,_), list(X,K)), kind(K,K).
stammbaum(tree(heinz, margret), list(andreas,christian,patricia)).

kind(X,R) :-   stammbaum(tree(_,_), list(X, R, _)).
kind(X,R) :-   stammbaum(tree(_,_), list(_, X, R)).
kind(X,R) :-   stammbaum(tree(_,_), list(R, _, X)).

%X ist Vater von Y
vater(X,Y) :- stammbaum(tree(X,_), list(Y, _, _)).
vater(X,Y) :- stammbaum(tree(X,_), list(_, Y, _)).
vater(X,Y) :- stammbaum(tree(X,_), list(_, _, Y)).
%X ist Mutter von Y
vater(X,Y) :- stammbaum(tree(_,X), list(Y, _, _)).
vater(X,Y) :- stammbaum(tree(_,X), list(_, Y, _)).
vater(X,Y) :- stammbaum(tree(_,X), list(_, _, Y)).
%X ist Sohn von Y
sohn(X,Y):- maennlich(X),stammbaum(tree(_,Y), list(X, _, _)).
sohn(X,Y):- maennlich(X),stammbaum(tree(_,Y), list(_, X, _)).
sohn(X,Y):- maennlich(X),stammbaum(tree(_,Y), list(_, _, X)).
sohn(X,Y):- maennlich(X),stammbaum(tree(Y,_), list(X, _, _)).
sohn(X,Y):- maennlich(X),stammbaum(tree(Y,_), list(_, X, _)).
sohn(X,Y):- maennlich(X),stammbaum(tree(Y,_), list(_, _, X)).

%X ist Tochter von Y
tochter(X,Y):- weiblich(X),stammbaum(tree(_,Y), list(X, _, _)).
tochter(X,Y):- weiblich(X),stammbaum(tree(_,Y), list(_, X, _)).
tochter(X,Y):- weiblich(X),stammbaum(tree(_,Y), list(_, _, X)).
tochter(X,Y):- weiblich(X),stammbaum(tree(Y,_), list(X, _, _)).
tochter(X,Y):- weiblich(X),stammbaum(tree(Y,_), list(_, X, _)).
tochter(X,Y):- weiblich(X),stammbaum(tree(Y,_), list(_, _, X)).
%X ist Bruder von Y
bruder(X,Y):- maennlich(X),stammbaum(tree(_,_), list(_, Y, X)).
bruder(X,Y):- maennlich(X),stammbaum(tree(_,_), list(Y, _, X)).
bruder(X,Y):- maennlich(X),stammbaum(tree(_,_), list(Y, X, _)).
bruder(X,Y):- maennlich(X),stammbaum(tree(_,_), list(_, X, Y)).
bruder(X,Y):- maennlich(X),stammbaum(tree(_,_), list(X, Y, _)).
bruder(X,Y):- maennlich(X),stammbaum(tree(_,_), list(X, _, Y)).
%X ist Schwester von Y
schwester(X,Y):- weiblich(X),stammbaum(tree(_,_), list(_, Y, X)).
schwester(X,Y):- weiblich(X),stammbaum(tree(_,_), list(Y, _, X)).
schwester(X,Y):- weiblich(X),stammbaum(tree(_,_), list(Y, X, _)).
schwester(X,Y):- weiblich(X),stammbaum(tree(_,_), list(_, X, Y)).
schwester(X,Y):- weiblich(X),stammbaum(tree(_,_), list(X, Y, _)).
schwester(X,Y):- weiblich(X),stammbaum(tree(_,_), list(X, _, Y)).


