% Author:
% Date: 5/3/2018

vater(abraham,isaak).
vater(haran,lot).
vater(gott,X).
mutter(sarah,isaak).
männlich(abraham).
männlich(isaak).
männlich(haran).
männlich(lot).
weiblich(sarah).

sohn(X,Y) :- vater(Y,X), männlich(X).
sohn(X,Y) :- mutter(Y,X), männlich(X).
tochter(X,Y) :- vater(Y,X), weiblich(X).