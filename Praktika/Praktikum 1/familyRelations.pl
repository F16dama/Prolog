% Author:
% Date: 4/26/2018

maennlich(heinz).
maennlich(dirk).
maennlich(andreas).
maennlich(christian).
maennlich(mike).
maennlich(marvin).
maennlich(niklas).

weiblich(margret).
weiblich(patricia).
weiblich(lisa).

%X ist Mutter von Y
elternteil(margret, patricia).
elternteil(margret, andreas).
elternteil(margret, christian).
elternteil(patricia, mike).
elternteil(patricia, lisa).

%X ist Vater von Y
elternteil(heinz, patricia).
elternteil(heinz, andreas).
elternteil(heinz, christian).
elternteil(dirk, mike).
elternteil(dirk, lisa).
elternteil(andreas, niklas).
elternteil(andreas, marvin).

%X ist vater von Y
vater(X,Y):- maennlich(X), elternteil(X,Y).
%X ist mutter von Y
mutter(X,Y):- weiblich(X), elternteil(X,Y).

%X ist Sohn von Y
sohn(X,Y):- maennlich(X), elternteil(Y,X).

%X ist Tochter von Y
tochter(X,Y):- weiblich(X), elternteil(Y,X).

%X ist Bruder von Y
bruder(X,Y):- maennlich(X), elternteil(Par,X),elternteil(Par,Y), X\=Y.

%X ist Schwester von Y
schwester(X,Y):- maennlich(X), elternteil(Par,X),elternteil(Par,Y), X\=Y.

%X ist grossvater von Y
grossVater(X,Y):- maennlich(X), elternteil(X,C), elternteil(C,Y).

%X ist grossmutter von Y
grossMutter(X,Y):- weiblich(X), elternteil(X,C), elternteil(C,Y).

%X ist Onkel von Y
onkel(X,Y):- bruder(X,S), elternteil(S,Y).
%X ist tante von Y
tante(X,Y):- schwester(X,S), elternteil(S,Y).

%X ist cousin von Y
cousin(X,Y):- onkel(O,Y),elternteil(O,X).

%X ist vorfahre von Y
vorfahre(X,Y):- elternteil(X,Y).
vorfahre(X,Y):- elternteil(X,C),vorfahre(C,Y).



