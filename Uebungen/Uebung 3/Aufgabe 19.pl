% Author:
% Date: 5/3/2018

vater(abraham,isaak).
vater(haran,lot).
vater(gott,X).
mutter(sarah,isaak).
m�nnlich(abraham).
m�nnlich(isaak).
m�nnlich(haran).
m�nnlich(lot).
weiblich(sarah).

sohn(X,Y) :- vater(Y,X), m�nnlich(X).
sohn(X,Y) :- mutter(Y,X), m�nnlich(X).
tochter(X,Y) :- vater(Y,X), weiblich(X).