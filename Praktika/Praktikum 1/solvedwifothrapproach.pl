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
mutter(margret, patricia).
mutter(margret, andreas).
mutter(margret, christian).
mutter(patricia, mike).
mutter(patricia, lisa).

%X ist Vater von Y
vater(heinz, patricia).
vater(heinz, andreas).
vater(heinz, christian).
vater(dirk, mike).
vater(dirk, lisa).
vater(andreas, niklas).
vater(andreas, marvin).

%X ist Sohn von Y
sohn(X,Y):- maennlich(X), vater(Y,X).
sohn(X,Y):- maennlich(X), mutter(Y,X).

%X ist Tochter von Y
tochter(X,Y):- weiblich(X), vater(Y,X).
tochter(X,Y):- weiblich(X), mutter(Y,X).

%X ist Bruder von Y
bruder(X,Y):- maennlich(X), vater(Par,X),vater(Par,Y).
bruder(X,Y):- maennlich(X), mutter(Par,X),mutter(Par,Y).

%X ist Schwester von Y
schwester(X,Y):- maennlich(X), vater(Par,X),vater(Par,Y).
schwester(X,Y):- maennlich(X), mutter(Par,X),mutter(Par,Y).

%X ist grossvater von Y
grossVater(X,Y):- maennlich(X), vater(X,C), vater(C,Y).
grossVater(X,Y):- maennlich(X), vater(X,C), mutter(C,Y).

%X ist grossmutter von Y
grossMutter(X,Y):- weiblich(X), mutter(X,C), vater(C,Y).
grossMutter(X,Y):- weiblich(X), mutter(X,C), mutter(C,Y).

%X ist Onkel von Y
onkel(X,Y):- bruder(X,S), vater(S,Y).
onkel(X,Y):- bruder(X,S), mutter(S,Y).
%X ist tante von Y
tante(X,Y).
%X ist cousin von Y
cousin(X,Y).


