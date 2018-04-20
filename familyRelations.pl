% Author:
% Date: 4/20/2018
weiblich(sarah).
weiblich(milcah).
weiblich(yiscah).

m�nnlich(terach).
m�nnlich(abraham).
m�nnlich(nachor).
m�nnlich(haran).
m�nnlich(isaak).
m�nnlich(lot).

vater(terach, abraham).
vater(terach,nachor).
vater(terach,haran).
vater(abraham,isaak).
vater(haran, milcah).
vater(haran, lot).
vater(haran, yiscah).

mutter(sarah, isaak).

elternteil(X) :- vater(X, Child).
elternteil(X) :- mutter(X,Child).
sohn(Y,X) :- vater(X,Y),m�nnlich(Y) .
sohn(Y,X) :- mutter(X,Y),m�nnlich(Y) .
tochter(Y,X) :- vater(X,Y),weiblich(Y).
tochter(Y,X) :- mutter(X,Y),weiblich(Y).
bruder(X,Y) :- m�nnlich(X), vater(Par,X),vater(Par,Y).
