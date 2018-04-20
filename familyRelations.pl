% Author:
% Date: 4/20/2018
weiblich(sarah).
weiblich(milcah).
weiblich(yiscah).

männlich(terach).
männlich(abraham).
männlich(nachor).
männlich(haran).
männlich(isaak).
männlich(lot).

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
sohn(Y,X) :- vater(X,Y),männlich(Y) .
sohn(Y,X) :- mutter(X,Y),männlich(Y) .
tochter(Y,X) :- vater(X,Y),weiblich(Y).
tochter(Y,X) :- mutter(X,Y),weiblich(Y).
bruder(X,Y) :- männlich(X), vater(Par,X),vater(Par,Y).
